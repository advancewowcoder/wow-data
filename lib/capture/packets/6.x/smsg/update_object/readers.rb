module WOW::Capture::Packets::SMSG
  class UpdateObject < WOW::Capture::Packets::Base
    module Entries
      module Readers
        private def read_values
          updates = {}

          update_fields = @packet.parser.definitions.update_fields

          mask_size = @packet.read_byte

          mask_values = []

          mask_size.times do
            mask_values << @packet.read_uint32
          end

          mask = BitArray.new(mask_size, mask_values)

          fields_count = mask.total_set
          fields_found = 0
          field_index = 0

          while fields_found < fields_count
            if mask[field_index] == 0
              field_index += 1
              next
            end

            # Obtain relevant field details for the current field index.
            field_lookup = FieldManager.field_at_index(update_fields, @object_type, field_index)
            field_name, field_type, field_size, block_offset = field_lookup

            # Read the block.
            block_value = @packet.read_update_block
            blocks_read = 1

            if !updates.has_key?(field_name)
              updates[field_name] = {
                type: field_type,
                size: field_size,
                blocks: []
              }
            end

            updates[field_name][:blocks] << {
              offset: block_offset,
              value: block_value
            }

            field_index += blocks_read
            fields_found += blocks_read
          end

          # Newer than 16016
          # ClientVersion.AddedInVersion(ClientVersionBuild.V5_0_4_16016)
          dynamic_updates = read_dynamic_values
          updates.merge!(dynamic_updates)

          updates
        end

        private def read_dynamic_values
          dynamic = {}

          mask_size = @packet.read_byte

          mask_values = []

          mask_size.times do
            mask_values << @packet.read_uint32
          end

          mask = BitArray.new(mask_size, mask_values)

          fields_count = mask.total_set
          fields_found = 0
          field_index = 0

          while fields_found < fields_count
            if mask[field_index] == 0
              field_index += 1
              next
            end

            flag = @packet.read_byte

            if (flag & 0x80) != 0
              @packet.read_uint16
            end

            count = flag & 0x7F

            values = []

            count.times do
              values << @packet.read_uint32
            end

            field_index += 1
            fields_found += 1

            values_mask = BitArray.new(values.length, values)

            values_count = values_mask.total_set
            values_found = 0
            values_index = 0

            while values_found < values_count
              if values_mask[values_index] == 0
                values_index += 1
                next
              end

              block_value = @packet.read_update_block

              values_index += 1
              values_found += 1
            end
          end

          dynamic
        end
      end
    end
  end
end