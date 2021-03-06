core:import("CoreMissionScriptElement")
ElementAnnouncerGift = ElementAnnouncerGift or class(CoreMissionScriptElement.MissionScriptElement)

function ElementAnnouncerGift:init(...)
	ElementAnnouncerGift.super.init(self, ...)
end
function ElementAnnouncerGift:client_on_executed(...)
	self:on_executed(...)
end

function ElementAnnouncerGift:on_executed(instigator)

	if not self._values.enabled then
		self._mission_script:debug_output("Element '" .. self._editor_name .. "' not enabled. Skip.", Color(1, 1, 0, 0))
		return
	end

    if self._values.gift_id == "max_ammo" then
        local player_unit = managers.player:player_unit()
        for id,weapon in pairs( player_unit:inventory():available_selections() ) do
            if alive(weapon.unit) then
                weapon.unit:base():replenish()
                managers.hud:set_ammo_amount( id, weapon.unit:base():ammo_info() )
            end
            
            managers.player:add_grenade_amount(10)
        end

        if managers.hud then
            managers.hud:show_hint( { text = "Max Ammo!" } )
        end

        self._source = SoundDevice:create_source(self._editor_name)
		self._source:set_position(self._values.position)
        self._source:set_orientation(self._values.rotation)
        self._source:post_event("zm_announcer_max_ammo")
    end

    if self._values.gift_id == "firesale" then
        if managers.hud then
            managers.hud:show_hint( { text = "Firesale!" } )
            managers.hud._hud_zm_waves:_set_gift_visible("icon_firesale", true) 
        end

        managers.statistics.events.firesale_active = true
    -- Scripted in game
    end

    if self._values.gift_id == "firesale_first" then
    -- Scripted in game
    end

    if self._values.gift_id == "firesale_disable" then
        managers.statistics.events.firesale_active = false
        managers.hud._hud_zm_waves:_set_gift_visible("icon_firesale", false)
    end

    if self._values.gift_id == "double_points" then
        managers.hud:show_hint( { text = "Double Points!" } )
        managers.hud._hud_zm_waves:_set_gift_visible("icon_double_points", true) 
        managers.statistics.events.double_point_active = true
        self._source = SoundDevice:create_source(self._editor_name)
		self._source:set_position(self._values.position)
        self._source:set_orientation(self._values.rotation)
        self._source:post_event("zm_announcer_double_points")

        self._source_loop = SoundDevice:create_source(self._editor_name .. "_loop_dp")
		self._source_loop:set_position(self._values.position)
        self._source_loop:set_orientation(self._values.rotation)
        self._source_loop:post_event("zm_double_points_loop")
    end

    if self._values.gift_id == "double_points_disable" then
        managers.statistics.events.double_point_active = false
        managers.hud._hud_zm_waves:_set_gift_visible("icon_double_points", false)         
    end

    if self._values.gift_id == "instakill" then
        managers.hud:show_hint( { text = "Instakill!" } )
        managers.hud._hud_zm_waves:_set_gift_visible("icon_instakill", true)
        managers.statistics.events.instakill_active = true
        self._source = SoundDevice:create_source(self._editor_name)
		self._source:set_position(self._values.position)
        self._source:set_orientation(self._values.rotation)
        self._source:post_event("zm_announcer_instakill")

        self._source_loop = SoundDevice:create_source(self._editor_name .. "_loop_ik")
		self._source_loop:set_position(self._values.position)
        self._source_loop:set_orientation(self._values.rotation)
        self._source_loop:post_event("zm_instakill_loop")
    end

    if self._values.gift_id == "instakill_disable" then
        managers.statistics.events.instakill_active = false
        managers.hud._hud_zm_waves:_set_gift_visible("icon_instakill", false)        
    end
	
	ElementAnnouncerGift.super.on_executed(self, instigator)
end

function ElementAnnouncerGift:on_script_activated()
    self._mission_script:add_save_state_cb(self._id)
end

function ElementAnnouncerGift:save(data)
    data.save_me = true
    data.enabled = self._values.enabled
end

function ElementAnnouncerGift:load(data)
    self:set_enabled(data.enabled)
end