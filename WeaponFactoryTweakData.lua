Hooks:PostHook(WeaponFactoryTweakData, "init", "Frf2Init", function(self)
    self:_init_no_weapon()
    self:_init_wunderwaffe()
    self:_init_wunderwaffe_dg3()

    self:_init_multiplix()
    self:_init_upgraded_multiplix()
end)

function WeaponFactoryTweakData:_init_no_weapon()
    self.parts.wpn_fps_pis_nothing_sight = deep_clone(self.parts.wpn_fps_m4_uupg_o_flipup)
    self.parts.wpn_fps_pis_nothing_sight.unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"
    self.parts.wpn_fps_pis_nothing_body_standard = deep_clone(self.parts.wpn_fps_pis_p226_body_standard)
    self.parts.wpn_fps_pis_nothing_body_standard.unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy"
    self.parts.wpn_fps_pis_nothing_body_standard.stats.damage = -10
    self.parts.wpn_fps_pis_nothing_body_standard.stats.concealment = 10
    self.parts.wpn_fps_pis_nothing_body_standard.stats.recoil = -24
    self.parts.wpn_fps_pis_nothing_body_standard.stats.spread = -8

    self.wpn_fps_ass_nothing2_primary = {
        unit = "units/mods/weapons/wpn_fps_ass_nothing2/wpn_fps_ass_nothing2",
		optional_types = {
			"gadget",
			"barrel_ext"
		},
		default_blueprint = {
			"wpn_fps_pis_nothing_sight",
			"wpn_fps_pis_nothing_body_standard"
		},
		uses_parts = {
            "wpn_fps_pis_nothing_sight",
			"wpn_fps_pis_nothing_body_standard"
		}
    }

    self.wpn_fps_ass_nothing2_primary.override = {
		wpn_fps_pis_nothing_sight = {
			stats = {
				zoom = 0
			},
			stance_mod = {
				wpn_fps_ass_nothing2 = {
					translation = Vector3( 9999999999, 99999999, 999999)
				}
			}
        }
    }
end

function WeaponFactoryTweakData:_init_wunderwaffe()
    self.parts.wpn_fps_spe_wunderwaffe_body = deep_clone(self.parts.wpn_fps_snp_mosin_body_standard)
    self.parts.wpn_fps_spe_wunderwaffe_body.unit = "units/mods/weapons/wpn_fps_spe_wunderwaffe_pts/wpn_fps_spe_wunderwaffe_body"
    self.parts.wpn_fps_spe_wunderwaffe_body.type = "barrel"
    self.parts.wpn_fps_spe_wunderwaffe_body.third_unit = "units/mods/weapons/wpn_third_spe_wunderwaffe_pts/wpn_third_spe_wunderwaffe_body"

    self.wpn_fps_spe_wunderwaffe_primary = deep_clone(self.wpn_fps_snp_mosin)
    self.wpn_fps_spe_wunderwaffe_primary.unit = "units/mods/weapons/wpn_fps_spe_wunderwaffe/wpn_fps_spe_wunderwaffe"
    self.wpn_fps_spe_wunderwaffe_primary.default_blueprint = {
        "wpn_fps_spe_wunderwaffe_body"
    }

    self.wpn_fps_spe_wunderwaffe_secondary = deep_clone(self.wpn_fps_spe_wunderwaffe_primary)
    self.wpn_fps_spe_wunderwaffe_secondary.unit = "units/mods/weapons/wpn_fps_spe_wunderwaffe/wpn_fps_spe_wunderwaffe_secondary"
end

function WeaponFactoryTweakData:_init_wunderwaffe_dg3()
    self.parts.wpn_fps_spe_wunderwaffe_dg3_body = deep_clone(self.parts.wpn_fps_snp_mosin_body_standard)
    self.parts.wpn_fps_spe_wunderwaffe_dg3_body.unit = "units/mods/weapons/wpn_fps_spe_wunderwaffe_pts/wpn_fps_spe_wunderwaffe_dg3_body"
    self.parts.wpn_fps_spe_wunderwaffe_dg3_body.type = "barrel"
    self.parts.wpn_fps_spe_wunderwaffe_dg3_body.third_unit = "units/mods/weapons/wpn_third_spe_wunderwaffe_pts/wpn_third_spe_wunderwaffe_dg3_body"

    self.wpn_fps_spe_wunderwaffe_dg3_primary = deep_clone(self.wpn_fps_snp_mosin)
    self.wpn_fps_spe_wunderwaffe_dg3_primary.unit = "units/mods/weapons/wpn_fps_spe_wunderwaffe/wpn_fps_spe_wunderwaffe_dg3"
    self.wpn_fps_spe_wunderwaffe_dg3_primary.default_blueprint = {
        "wpn_fps_spe_wunderwaffe_dg3_body"
    }
    self.wpn_fps_spe_wunderwaffe_dg3_secondary = deep_clone(self.wpn_fps_spe_wunderwaffe_dg3_primary)
    self.wpn_fps_spe_wunderwaffe_dg3_secondary.unit = "units/mods/weapons/wpn_fps_spe_wunderwaffe/wpn_fps_spe_wunderwaffe_dg3_secondary"
end

function WeaponFactoryTweakData:_init_multiplix()
    self.wpn_fps_pis_1911_primary = deep_clone(self.wpn_fps_pis_1911)
    self.wpn_fps_pis_1911_primary.unit = "new_weapon_units/wpn_fps_pis_1911_primary"
    self.wpn_fps_pis_1911_secondary = deep_clone(self.wpn_fps_pis_1911)
    self.wpn_fps_pis_1911_secondary.unit = "new_weapon_units/wpn_fps_pis_1911_secondary"

    self.wpn_fps_ass_m14_primary = deep_clone(self.wpn_fps_ass_m14)
    self.wpn_fps_ass_m14_primary.unit = "new_weapon_units/wpn_fps_ass_m14_primary"
    self.wpn_fps_ass_m14_secondary = deep_clone(self.wpn_fps_ass_m14)
    self.wpn_fps_ass_m14_secondary.unit = "new_weapon_units/wpn_fps_ass_m14_secondary"

    self.wpn_fps_shot_b682_primary = deep_clone(self.wpn_fps_shot_b682)
    self.wpn_fps_shot_b682_primary.unit = "new_weapon_units/wpn_fps_shot_b682_primary"
    self.wpn_fps_shot_b682_secondary = deep_clone(self.wpn_fps_shot_b682)
    self.wpn_fps_shot_b682_secondary.unit = "new_weapon_units/wpn_fps_shot_b682_secondary"

    self.wpn_fps_smg_mp9_primary = deep_clone(self.wpn_fps_smg_mp9)
    self.wpn_fps_smg_mp9_primary.unit = "new_weapon_units/wpn_fps_smg_mp9_primary"
    self.wpn_fps_smg_mp9_secondary = deep_clone(self.wpn_fps_smg_mp9)
    self.wpn_fps_smg_mp9_secondary.unit = "new_weapon_units/wpn_fps_smg_mp9_secondary"

    self.wpn_fps_snp_m95_primary = deep_clone(self.wpn_fps_snp_m95)
    self.wpn_fps_snp_m95_primary.unit = "new_weapon_units/wpn_fps_snp_m95_primary"
    self.wpn_fps_snp_m95_secondary = deep_clone(self.wpn_fps_snp_m95)
    self.wpn_fps_snp_m95_secondary.unit = "new_weapon_units/wpn_fps_snp_m95_secondary"
end

function WeaponFactoryTweakData:_init_upgraded_multiplix()
    self.wpn_fps_ass_m14_upg_primary = deep_clone(self.wpn_fps_ass_m14)
    self.wpn_fps_ass_m14_upg_primary.unit = "new_weapon_units/upgrade/wpn_fps_ass_m14_upg_primary"
    self.wpn_fps_ass_m14_upg_primary.default_blueprint = {
        "wpn_fps_ass_m14_b_standard",
        "wpn_fps_ass_m14_body_lower",
        "wpn_fps_ass_m14_body_upper",
        "wpn_fps_ass_m14_body_jae",
        "wpn_fps_ass_m14_m_standard",
        "wpn_fps_upg_o_reflex",
        "wpn_fps_upg_o_m14_scopemount",
        "wpn_fps_upg_fl_ass_laser",
        "wpn_fps_upg_ns_ass_smg_large"
    }
    self.wpn_fps_ass_m14_upg_secondary = deep_clone(self.wpn_fps_ass_m14_upg_primary)
    self.wpn_fps_ass_m14_upg_secondary.unit = "new_weapon_units/upgrade/wpn_fps_ass_m14_upg_secondary"

    self.wpn_fps_snp_m95_upg_primary = deep_clone(self.wpn_fps_snp_m95)
    self.wpn_fps_snp_m95_upg_primary.unit = "new_weapon_units/upgrade/wpn_fps_snp_m95_upg_primary"
    self.wpn_fps_snp_m95_upg_primary.default_blueprint = {
        "wpn_fps_snp_m95_barrel_long",
        "wpn_fps_snp_m95_bipod",
        "wpn_fps_snp_m95_lower_reciever",
        "wpn_fps_snp_m95_upper_reciever",
        "wpn_fps_snp_m95_magazine",
        "wpn_fps_upg_o_leupold",
        "wpn_fps_upg_m4_g_standard_vanilla"
    }
    self.wpn_fps_snp_m95_upg_secondary = deep_clone(self.wpn_fps_snp_m95_upg_primary)
    self.wpn_fps_snp_m95_upg_secondary.unit = "new_weapon_units/upgrade/wpn_fps_snp_m95_upg_secondary"

    self.wpn_fps_pis_1911_upg_primary = deep_clone(self.wpn_fps_x_1911)
    self.wpn_fps_pis_1911_upg_primary.unit = "new_weapon_units/upgrade/wpn_fps_pis_1911_upg_primary"
    self.wpn_fps_pis_1911_upg_primary.default_blueprint = {
        "wpn_fps_pis_1911_body_standard",
        "wpn_fps_pis_1911_b_long",
        "wpn_fps_pis_1911_g_engraved",
        "wpn_fps_pis_1911_m_standard",
        "wpn_upg_o_marksmansight_rear",
        "wpn_fps_upg_fl_pis_laser"
    }
    self.wpn_fps_pis_1911_upg_secondary = deep_clone(self.wpn_fps_pis_1911_upg_primary)
    self.wpn_fps_pis_1911_upg_secondary.unit = "new_weapon_units/upgrade/wpn_fps_pis_1911_upg_secondary"

    self.wpn_fps_shot_b682_upg_primary = deep_clone(self.wpn_fps_shot_b682)
    self.wpn_fps_shot_b682_upg_primary.unit = "new_weapon_units/upgrade/wpn_fps_shot_b682_upg_primary"
    self.wpn_fps_shot_b682_upg_primary.default_blueprint = {
        "wpn_fps_shot_b682_body_standard",
        "wpn_fps_shot_b682_b_long",
        "wpn_fps_shot_b682_s_ammopouch",
        "wpn_fps_upg_a_dragons_breath"
    }
    self.wpn_fps_shot_b682_upg_secondary = deep_clone(self.wpn_fps_shot_b682_upg_primary)
    self.wpn_fps_shot_b682_upg_secondary.unit = "new_weapon_units/upgrade/wpn_fps_shot_b682_upg_secondary"

    self.wpn_fps_smg_mp9_upg_primary = deep_clone(self.wpn_fps_smg_mp9)
    self.wpn_fps_smg_mp9_upg_primary.unit = "new_weapon_units/upgrade/wpn_fps_smg_mp9_upg_primary"
    self.wpn_fps_smg_mp9_upg_primary.default_blueprint = {
        "wpn_fps_smg_mp9_body_mp9",
        "wpn_fps_smg_mp9_s_skel",
        "wpn_fps_smg_mp9_m_extended",
        "wpn_fps_smg_mp9_b_dummy",
        "wpn_fps_upg_ass_ns_battle",
        "wpn_fps_upg_vg_ass_smg_verticalgrip",
        "wpn_fps_upg_fl_ass_laser"
    }
    self.wpn_fps_smg_mp9_upg_secondary = deep_clone(self.wpn_fps_smg_mp9_upg_primary)
    self.wpn_fps_smg_mp9_upg_secondary.unit = "new_weapon_units/upgrade/wpn_fps_smg_mp9_upg_secondary"
end