HUDZMWaves = HUDZMWaves or class()

function HUDZMWaves:init(parent)
    self._current_wave = 0
    self:_create_zm_waves_hud(parent)
    self:_create_gift_hud(parent)
end

function HUDZMWaves:_create_zm_waves_hud(parent)
    local zm_wave_panel = parent:panel({
        name = "zm_wave_panel",
        w = 275,
        h = 35
    })
    self._panel = zm_wave_panel

    local zm_wave_text = zm_wave_panel:text({
        name = "zm_wave_text",
        vertical = "center",
        y = 0,
        x = 10,
        layer = 1,
        text = "WAVE " .. self._current_wave,
        color = Color(1, 0.6, 0, 0),
        font_size = tweak_data.menu.pd2_large_font_size,
        font = tweak_data.menu.pd2_large_font,
        visible = true
    })
    zm_wave_text:set_world_center_y(zm_wave_panel:world_center_y() + 1)

    self._zm_wave_text = zm_wave_text
end

function HUDZMWaves:_create_gift_hud(parent)
    local is_firesale = managers.statistics.events.firesale_active
    local is_instakill = managers.statistics.events.instakill_active
    local is_double_points = managers.statistics.events.double_point_active

    local gift_panel = parent:panel({
        name = "gift_panel",
        w = parent:w(),
        h = 64
    })
    gift_panel:set_y(parent:bottom() - 200)

    self.gift_panel = gift_panel

    local icon_instakill = gift_panel:bitmap({
        name = "icon_instakill",
        texture = "perks/gift_instakill",
        w = 64,
        h = 64,
        visible = is_instakill
    })
    icon_instakill:set_center_x(parent:center_x())

    local icon_firesale = gift_panel:bitmap({
        name = "icon_firesale",
        texture = "perks/gift_firesale",
        w = 64,
        h = 64,
        visible = is_firesale
    })
    icon_firesale:set_right(icon_instakill:left() + 5)

    local icon_double_points = gift_panel:bitmap({
        name = "icon_double_points",
        texture = "perks/gift_double_points",
        w = 64,
        h = 64,
        visible = is_double_points
    })
    icon_double_points:set_left(icon_instakill:right())
end

function HUDZMWaves:_set_gift_visible(gift, visible)
    local texture = self.gift_panel:child(gift)
    texture:set_visible(visible)

    local function animate_icon_lifetime(o)
        local from = 1
        local to = 0
        local t = 0

        o:set_alpha(from)
        wait(18)
        
        o:set_alpha(to)
        wait(0.25)
        o:set_alpha(from)
        wait(0.25)
        o:set_alpha(to)
        wait(0.25)
        o:set_alpha(from)
        wait(0.25)
        o:set_alpha(to)
        wait(0.25)
        o:set_alpha(from)
        wait(0.25)
        o:set_alpha(to)
        wait(0.25)
        o:set_alpha(from)
        wait(0.25)
        o:set_alpha(to)
        wait(0.25)
        o:set_alpha(from)
        wait(0.25)
        o:set_alpha(to)
        wait(0.25)
        o:set_alpha(from)
        wait(0.25)
        o:set_alpha(to)
        wait(0.25)
        o:set_alpha(from)
        wait(0.25)
        o:set_alpha(to)
        wait(0.25)
        o:set_alpha(from)
        wait(0.25)
        o:set_alpha(to)
        wait(0.25)
        o:set_alpha(from)
        wait(0.25)
        o:set_alpha(to)
        wait(0.25)
        o:set_alpha(from)
        wait(0.25)
        o:set_alpha(to)
        wait(0.25)
        o:set_alpha(from)
        wait(0.25)
        o:set_alpha(to)
        wait(0.25)
        o:set_alpha(from)
        wait(0.25)
        o:set_alpha(to)
        wait(0.25)
        o:set_alpha(from)
        wait(0.25)
        o:set_alpha(to)
        wait(0.25)
        o:set_alpha(from)
        wait(0.25)

        o:set_alpha(to)
        wait(0.1)
        o:set_alpha(from)
        wait(0.1)
        o:set_alpha(to)
        wait(0.1)
        o:set_alpha(from)
        wait(0.1)
        o:set_alpha(to)
        wait(0.1)
        o:set_alpha(from)
        wait(0.1)
        o:set_alpha(to)
        wait(0.1)
        o:set_alpha(from)
        wait(0.1)
        o:set_alpha(to)
        wait(0.1)
        o:set_alpha(from)
        wait(0.1)

        o:set_alpha(to)
        wait(0.1)
        o:set_alpha(from)
        wait(0.1)
        o:set_alpha(to)
        wait(0.1)
        o:set_alpha(from)
        wait(0.1)
        o:set_alpha(to)
        wait(0.1)
        o:set_alpha(from)
        wait(0.1)
        o:set_alpha(to)
        wait(0.1)
        o:set_alpha(from)
        wait(0.1)
        o:set_alpha(to)
        wait(0.1)
        o:set_alpha(from)
        wait(0.1)

        o:set_alpha(to)
        wait(0.1)
        o:set_alpha(from)
        wait(0.1)
        o:set_alpha(to)
        wait(0.1)
        o:set_alpha(from)
        wait(0.1)
        o:set_alpha(to)
        wait(0.1)
        o:set_alpha(from)
        wait(0.1)
        o:set_alpha(to)
        wait(0.1)
        o:set_alpha(from)
        wait(0.1)
        o:set_alpha(to)
        wait(0.1)
        o:set_alpha(from)
        wait(0.1)

        o:set_alpha(to)
        wait(0.1)
        o:set_alpha(from)
        wait(0.1)
        o:set_alpha(to)
        wait(0.1)
        o:set_alpha(from)
        wait(0.1)
        o:set_alpha(to)
        wait(0.1)
        o:set_alpha(from)
        wait(0.1)
        o:set_alpha(to)
        wait(0.1)
        o:set_alpha(from)
        wait(0.1)
        o:set_alpha(to)
        wait(0.1)
        o:set_alpha(from)
        wait(0.1)

        o:set_alpha(to)
        wait(0.1)
        o:set_alpha(from)
        wait(0.1)
        o:set_alpha(to)
        wait(0.1)
        o:set_alpha(from)
        wait(0.1)
        o:set_alpha(to)
        wait(0.1)
        o:set_alpha(from)
        wait(0.1)
        o:set_alpha(to)
        wait(0.1)
        o:set_alpha(from)
        wait(0.1)
        o:set_alpha(to)
        wait(0.1)
        o:set_alpha(from)
        wait(0.1)

        o:set_alpha(to)
        wait(0.1)
        o:set_alpha(from)
        wait(0.1)
        o:set_alpha(to)
        wait(0.1)
        o:set_alpha(from)
        wait(0.1)
        o:set_alpha(to)
        wait(0.1)
        o:set_alpha(from)
        wait(0.1)
        o:set_alpha(to)
        wait(0.1)
        o:set_alpha(from)
        wait(0.1)
        o:set_alpha(to)
        wait(0.1)
        o:set_alpha(from)
        wait(0.1)

        o:set_alpha(to)

        
    end

    texture:animate(animate_icon_lifetime)
end

function HUDZMWaves:_animate_text_blinking()
    local function animate_text_blinking(o)
        local from = Color(1, 0.6, 0, 0)
        local to = Color(0, 0.6, 0, 0)
        local t = 0

        o:set_color(from)

        while t < 1 do
            local dt = coroutine.yield()
            t = t + dt
        end

        t = 0

        while t < 1 do
            local dt = coroutine.yield()
            t = t + dt

            o:set_color(from * (1 - t) + to * t)
        end

        o:set_color(to)

        self._current_wave = self._current_wave + 1
        self._zm_wave_text:set_text("WAVE " .. self._current_wave)

       --[[local myPeerId = 

        if managers.trade:is_peer_in_custody() then
            managers.trade:criminal_respawn(pos, rot, criminal)
        end--]]
        --managers.groupai:state():teammate_comment(nil, "g51", nil, false, nil, true) -- Repeats due to the multiple calls by all players alive
        wait(8.5)
        local from = Color(0, 0.6, 0, 0)
        local to = Color(1, 0.6, 0, 0)
        local t = 0

        o:set_color(from)

        while t < 1 do
            local dt = coroutine.yield()
            t = t + dt
        end

        t = 0

        while t < 1 do
            local dt = coroutine.yield()
            t = t + dt

            o:set_color(from * (1 - t) + to * t)
        end

        o:set_color(to)
	end

    self._zm_wave_text:animate(animate_text_blinking)
end

HUDZMPoints = HUDZMPoints or class()

function HUDZMPoints:init(parent)
    self:_create_zm_hud(parent)
end

function HUDZMPoints:_create_zm_hud(parent)
    local padding = 5

    local zm_points_panel = parent:panel({
        name = "zm_point_panel",
        w = 300,
        h = 250
    })
    self._panel = zm_points_panel
    --self._panel:set_top(managers.hud._hud_zm_waves._panel:bottom() + 5)
    zm_points_panel:set_world_center_y(parent:world_center_y())

    local zm_points_panel_rect = zm_points_panel:rect({
        name = "background",
        color = Color.black,
        alpha = 0.4,
        visible = false,
        layer = -1,
        halign = "scale",
        valign = "scale"
    })

    local peer_1_avatar = zm_points_panel:bitmap({
        texture = "guis/textures/pd2/none_icon",
        h = 40,
        w = 40,
        x = 5,
        y = 5,
        visible = false
    })

    local peer_1_points = zm_points_panel:text({
        name = "peer_1_points",
        vertical = "center",
        valign = "center",
        x = -10,
        y = 5,
        text = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
        color = tweak_data.chat_colors[1],
        font_size = tweak_data.menu.pd2_small_font_size,
        font = tweak_data.menu.pd2_large_font,
        visible = false
    })
    managers.hud:make_fine_text(peer_1_points)
    peer_1_points:set_left(peer_1_avatar:right() + 15)
    peer_1_points:set_world_center_y(peer_1_avatar:world_center_y())

    local peer_2_avatar = zm_points_panel:bitmap({
        texture = "guis/textures/pd2/none_icon",
        h = 40,
        w = 40,
        visible = false
    })
    peer_2_avatar:set_left(peer_1_avatar:left())
    peer_2_avatar:set_top(peer_1_avatar:bottom() + padding)

    local peer_2_points = zm_points_panel:text({
        name = "peer_2_points",
        vertical = "center",
        valign = "center",
        text = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
        color = tweak_data.chat_colors[2],
        font_size = tweak_data.menu.pd2_small_font_size,
        font = tweak_data.menu.pd2_large_font,
        visible = false
    })
    managers.hud:make_fine_text(peer_2_points)
    peer_2_points:set_left(peer_1_points:left())
    peer_2_points:set_world_center_y(peer_2_avatar:world_center_y())

    local peer_3_avatar = zm_points_panel:bitmap({
        texture = "guis/textures/pd2/none_icon",
        h = 40,
        w = 40,
        visible = false
    })
    peer_3_avatar:set_left(peer_2_avatar:left())
    peer_3_avatar:set_top(peer_2_avatar:bottom() + padding)

    local peer_3_points = zm_points_panel:text({
        name = "peer_3_points",
        vertical = "center",
        valign = "center",
        text = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
        color = tweak_data.chat_colors[3],
        font_size = tweak_data.menu.pd2_small_font_size,
        font = tweak_data.menu.pd2_large_font,
        visible = false
    })
    managers.hud:make_fine_text(peer_3_points)
    peer_3_points:set_left(peer_1_points:left())
    peer_3_points:set_world_center_y(peer_3_avatar:world_center_y())

    local peer_4_avatar = zm_points_panel:bitmap({
        texture = "guis/textures/pd2/none_icon",
        h = 40,
        w = 40,
        visible = false
    })
    peer_4_avatar:set_left(peer_3_avatar:left())
    peer_4_avatar:set_top(peer_3_avatar:bottom() + padding)

    local peer_4_points = zm_points_panel:text({
        name = "peer_4_points",
        vertical = "center",
        valign = "center",
        text = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
        color = tweak_data.chat_colors[4],
        font_size = tweak_data.menu.pd2_small_font_size,
        font = tweak_data.menu.pd2_large_font,
        visible = false
    })
    managers.hud:make_fine_text(peer_4_points)
    peer_4_points:set_left(peer_1_points:left())
    peer_4_points:set_world_center_y(peer_4_avatar:world_center_y())

    self._zmp_avatars = {
        [1] = peer_1_avatar,
        [2] = peer_2_avatar,
        [3] = peer_3_avatar,
        [4] = peer_4_avatar
    }

    self._zmp_points = {
        [1] = peer_1_points,
        [2] = peer_2_points,
        [3] = peer_3_points,
        [4] = peer_4_points
    }

    self._zmp_points[1]:set_text("---")
    self._zmp_points[2]:set_text("---")
    self._zmp_points[3]:set_text("---")
    self._zmp_points[4]:set_text("---")
end

local HUDManager_setup_player_info_hud_pd2_original = HUDManager._setup_player_info_hud_pd2

function HUDManager:_setup_player_info_hud_pd2(...)
    self:_setup_zm_element()
    HUDManager_setup_player_info_hud_pd2_original(self, ...)
end

function HUDManager:_setup_zm_element()
	local hud = managers.hud:script(PlayerBase.PLAYER_INFO_HUD_PD2)
    self._hud_zm_waves = HUDZMWaves:new(hud.panel)
	self._hud_zm_points = HUDZMPoints:new(hud.panel)
end
