module WOW::Definitions
  build 18179 do
    namespace :dbc do
      table :area_table do
        e   0,    :id,                          type: :uint32,  tc_value: ''
        e   1,    :map_id,                      type: :uint32,  tc_value: ''
        e   2,    :parent_area_id,              type: :uint32,  tc_value: ''
        e   3,    :area_bit,                    type: :uint32,  tc_value: ''
        e   4,    :flags_1,                     type: :uint32,  tc_value: ''
        e   5,    :flags_2,                     type: :uint32,  tc_value: ''
        e   6,    :sound_provider_pref,         type: :uint32,  tc_value: ''
        e   7,    :sound_provider_pref_underwater, type: :uint32, tc_value: ''
        e   8,    :ambience_id,                 type: :uint32,  tc_value: ''
        e   9,    :zone_music,                  type: :uint32,  tc_value: ''
        e   10,   :zone_name,                   type: :string,  tc_value: ''
        e   11,   :intro_sound,                 type: :uint32,  tc_value: ''
        e   12,   :exploration_level,           type: :uint32,  tc_value: ''
        e   13,   :area_name,                   type: :string,  tc_value: ''
        e   14,   :faction_group_mask,          type: :uint32,  tc_value: ''
        e   15,   :liquid_type_1_id,            type: :uint32,  tc_value: ''
        e   16,   :liquid_type_2_id,            type: :uint32,  tc_value: ''
        e   17,   :liquid_type_3_id,            type: :uint32,  tc_value: ''
        e   18,   :liquid_type_4_id,            type: :uint32,  tc_value: ''
        e   19,   :ambient_multiplier,          type: :float,   tc_value: ''
        e   20,   :mount_flags,                 type: :uint32,  tc_value: ''
        e   21,   :uw_intro_music,              type: :uint32,  tc_value: ''
        e   22,   :uw_zone_music,               type: :uint32,  tc_value: ''
        e   23,   :uw_ambience,                 type: :uint32,  tc_value: ''
        e   24,   :world_pvp_id,                type: :uint32,  tc_value: ''
        e   25,   :pvp_combat_world_state_id,   type: :int32,   tc_value: ''
        e   26,   :wild_battle_pet_level_min,   type: :uint32,  tc_value: ''
        e   27,   :wild_battle_pet_level_max,   type: :uint32,  tc_value: ''
        e   28,   :wind_settings_id,            type: :uint32,  tc_value: ''
      end

      table :char_titles do
        e   0,    :id,                          type: :uint32,  tc_value: ''
        e   1,    :condition_id,                type: :uint32,  tc_value: ''
        e   2,    :name,                        type: :string,  tc_value: ''
        e   3,    :name_1,                      type: :string,  tc_value: ''
        e   4,    :mask_id,                     type: :uint32,  tc_value: ''
        e   5,    :flags,                       type: :uint32,  tc_value: ''
      end

      table :faction do
        e   0,    :id,                          type: :uint32,  tc_value: ''
        e   1,    :reputation_index,            type: :int32,   tc_value: ''
        e   2,    :reputation_race_mask_1,      type: :uint32,  tc_value: ''
        e   3,    :reputation_race_mask_2,      type: :uint32,  tc_value: ''
        e   4,    :reputation_race_mask_3,      type: :uint32,  tc_value: ''
        e   5,    :reputation_race_mask_4,      type: :uint32,  tc_value: ''
        e   6,    :reputation_class_mask_1,     type: :uint32,  tc_value: ''
        e   7,    :reputation_class_mask_2,     type: :uint32,  tc_value: ''
        e   8,    :reputation_class_mask_3,     type: :uint32,  tc_value: ''
        e   9,    :reputation_class_mask_4,     type: :uint32,  tc_value: ''
        e   10,   :reputation_base_1,           type: :uint32,  tc_value: ''
        e   11,   :reputation_base_2,           type: :uint32,  tc_value: ''
        e   12,   :reputation_base_3,           type: :uint32,  tc_value: ''
        e   13,   :reputation_base_4,           type: :uint32,  tc_value: ''
        e   14,   :reputation_flags_1,          type: :uint32,  tc_value: ''
        e   15,   :reputation_flags_2,          type: :uint32,  tc_value: ''
        e   16,   :reputation_flags_3,          type: :uint32,  tc_value: ''
        e   17,   :reputation_flags_4,          type: :uint32,  tc_value: ''
        e   18,   :parent_faction_id,           type: :uint32,  tc_value: ''
        e   19,   :parent_faction_mod_1,        type: :float,   tc_value: ''
        e   20,   :parent_faction_mod_2,        type: :float,   tc_value: ''
        e   21,   :parent_faction_cap,          type: :uint32,  tc_value: ''
        e   22,   :name,                        type: :string,  tc_value: ''
        e   23,   :description,                 type: :string,  tc_value: ''
        e   24,   :expansion,                   type: :uint32,  tc_value: ''
        e   25,   :flags,                       type: :uint32,  tc_value: ''
        e   26,   :friendship_rep_id,           type: :uint32,  tc_value: ''
      end

      table :skill_line do
        e   0,    :id,                          type: :uint32,  tc_value: ''
        e   1,    :category_id,                 type: :uint32,  tc_value: ''
        e   2,    :display_name,                type: :string,  tc_value: ''
        e   3,    :description,                 type: :string,  tc_value: ''
        e   4,    :spell_icon_id,               type: :uint32,  tc_value: ''
        e   5,    :alternate_verb,              type: :string,  tc_value: ''
        e   6,    :can_link,                    type: :uint32,  tc_value: ''
        e   7,    :parent_skill_line_id,        type: :uint32,  tc_value: ''
        e   8,    :flags,                       type: :uint32,  tc_value: ''
      end

      table :spell do
        e   0,    :id,                          type: :uint32,  tc_value: 'ID'
        e   1,    :name,                        type: :string,  tc_value: 'Name_lang'
        e   2,    :name_subtext,                type: :string,  tc_value: 'NameSubtext_lang'
        e   3,    :description,                 type: :string,  tc_value: 'Description'
        e   4,    :aura_description,            type: :string,  tc_value: 'AuraDescription_lang'
        e   5,    :rune_cost_id,                type: :uint32,  tc_value: 'RuneCostID'
        e   6,    :spell_missile_id,            type: :uint32,  tc_value: 'SpellMissileID'
        e   7,    :description_variables_id,    type: :uint32,  tc_value: 'DescriptionVariablesID'
        e   8,    :scaling_id,                  type: :uint32,  tc_value: 'ScalingID'
        e   9,    :aura_options_id,             type: :uint32,  tc_value: 'AuraOptionsID'
        e   10,   :aura_restrictions_id,        type: :uint32,  tc_value: 'AuraRestrictionsID'
        e   11,   :casting_requirements_id,     type: :uint32,  tc_value: 'CastingRequirementsID'
        e   12,   :categories_id,               type: :uint32,  tc_value: 'CategoriesID'
        e   13,   :class_options_id,            type: :uint32,  tc_value: 'ClassOptionsID'
        e   14,   :cooldowns_id,                type: :uint32,  tc_value: 'CooldownsID'
        e   15,   :equipped_items_id,           type: :uint32,  tc_value: 'EquippedItemsID'
        e   16,   :interrupts_id,               type: :uint32,  tc_value: 'InterruptsID'
        e   17,   :levels_id,                   type: :uint32,  tc_value: 'LevelsID'
        e   18,   :reagents_id,                 type: :uint32,  tc_value: 'ReagentsID'
        e   19,   :shapeshift_id,               type: :uint32,  tc_value: 'ShapeshiftID'
        e   20,   :target_restrictions_id,      type: :uint32,  tc_value: 'TargetRestrictionsID'
        e   21,   :totems_id,                   type: :uint32,  tc_value: 'TotemsID'
        e   22,   :required_project_id,         type: :uint32,  tc_value: 'RequiredProjectID'
        e   23,   :misc_id,                     type: :uint32,  tc_value: 'MiscID'
      end

      table :spell_icon do
        e   0,    :id,                          type: :uint32,  tc_value: ''
        e   1,    :icon_path,                   type: :string,  tc_value: ''
      end
    end
  end
end
