core:import("CoreMissionScriptElement")
ElementWave = ElementWave or class(CoreMissionScriptElement.MissionScriptElement)

function ElementWave:init(...)
	ElementWave.super.init(self, ...)
end
function ElementWave:client_on_executed(...)
	self:on_executed(...)
end

function ElementWave:on_executed(instigator)

	if not self._values.enabled then
		self._mission_script:debug_output("Element '" .. self._editor_name .. "' not enabled. Skip.", Color(1, 1, 0, 0))
		return
	end

    if self._values.ending_check then
        local nb_cop_alive = managers.enemy._enemy_data.nr_units - managers.groupai:state():get_amount_enemies_converted_to_criminals() - managers.groupai:state():police_hostage_count() - 1

        if nb_cop_alive <= 0 then
            ElementWave.super.on_executed(self, instigator)
            return
        end

        return
    end
	
	managers.statistics:_update_zm_hud_element()
    local current_wave = managers.hud._hud_zm_waves._current_wave

    if current_wave > 0 then
        managers.player:add_grenade_amount(2, true)
        tweak_data.character:_multiply_by_wave_nb(current_wave)
    end

    managers.hud._hud_zm_waves:_animate_text_blinking()
	ElementWave.super.on_executed(self, instigator)
end

function ElementWave:on_script_activated()
    self._mission_script:add_save_state_cb(self._id)
end

function ElementWave:save(data)
    data.save_me = true
    data.enabled = self._values.enabled
end

function ElementWave:load(data)
    self:set_enabled(data.enabled)
end
