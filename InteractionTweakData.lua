Hooks:PostHook(InteractionTweakData, "init", "zm_init_new_interactions", function(self, tweak_data)
    self.zm_wall_buy_falcon_1200 = {
        text_id = "zm_buy_falcon_1200",
		action_text_id = "zm_buy_weapon",
		start_active = false,
		axis = "y",
		timer = 1.5
    }

    self.zm_wall_buy_joceline_1600 = {
        text_id = "zm_wall_buy_joceline_1600",
		action_text_id = "zm_buy_weapon",
		start_active = false,
		axis = "y",
		timer = 1.5
    }

    self.zm_wall_buy_m14_2000 = {
        text_id = "zm_wall_buy_m14_2000",
		action_text_id = "zm_buy_weapon",
		start_active = false,
		axis = "y",
		timer = 1.5
    }

    self.zm_pack_a_punch = {
        text_id = "zm_pack_a_punch",
		action_text_id = "zm_upgrade_weapon",
		start_active = false,
		axis = "y",
		timer = 10
    }

    self.zm_open_path_1000 = {
        text_id = "zm_open_path_1000",
		action_text_id = "zm_opening_path",
		start_active = false,
		timer = 1.5,
        interact_distance = 500
	}
	
	self.zm_wall_buy_mp9_2500 = {
        text_id = "zm_wall_buy_mp9_2500",
		action_text_id = "zm_buy_weapon",
		start_active = false,
		axis = "y",
		timer = 1.5
	}
	
	self.zm_mystery_box = {
		text_id = "zm_mystery_box_950",
		action_text_id = "zm_buy_weapon",
		start_active = false,
		axis = "y",
		timer = 4
	}

	self.zm_mystery_box_fs = {
		text_id = "zm_mystery_box_10",
		action_text_id = "zm_buy_weapon",
		start_active = false,
		axis = "y",
		timer = 4
	}

	self.zm_perk_juggernog = {
		text_id = "zm_perk_juggernog_2500",
		action_text_id = "zm_buy_perk",
		start_active = false,
		axis = "y",
		timer = 3,
		special_equipment_block = "perk_juggernog"
	}

	self.zm_perk_speedcola = {
		text_id = "zm_perk_speedcola_3000",
		action_text_id = "zm_buy_perk",
		start_active = false,
		axis = "y",
		timer = 3,
		special_equipment_block = "perk_speedcola"
	}
end)
