function CharacterTweakData:_multiply_by_wave_nb(wave)
    local base = 1
    local divider = 0.125

	self.fbi.HEALTH_INIT = self.fbi.HEALTH_INIT * base + (wave / divider)
	self.swat.HEALTH_INIT = self.swat.HEALTH_INIT * base + (wave / divider)
	self.heavy_swat.HEALTH_INIT = self.heavy_swat.HEALTH_INIT * base + (wave / divider)
	self.fbi_heavy_swat.HEALTH_INIT = self.fbi_heavy_swat.HEALTH_INIT * base + (wave / divider)
	self.sniper.HEALTH_INIT = self.sniper.HEALTH_INIT * base + (wave / divider)
	self.gangster.HEALTH_INIT = self.gangster.HEALTH_INIT * base + (wave / divider)
	self.biker.HEALTH_INIT = self.biker.HEALTH_INIT * base + (wave / divider)
	self.tank.HEALTH_INIT = self.tank.HEALTH_INIT * base + (wave / divider)
	self.tank_mini.HEALTH_INIT = self.tank_mini.HEALTH_INIT * base + (wave / divider)
	self.tank_medic.HEALTH_INIT = self.tank_medic.HEALTH_INIT * base + (wave / divider)
	self.spooc.HEALTH_INIT = self.spooc.HEALTH_INIT * base + (wave / divider)
	self.shield.HEALTH_INIT = self.shield.HEALTH_INIT * base + (wave / divider)
	self.phalanx_minion.HEALTH_INIT = self.phalanx_minion.HEALTH_INIT * base + (wave / divider)
	self.phalanx_vip.HEALTH_INIT = self.phalanx_vip.HEALTH_INIT * base + (wave / divider)
	self.taser.HEALTH_INIT = self.taser.HEALTH_INIT * base + (wave / divider)
	self.city_swat.HEALTH_INIT = self.city_swat.HEALTH_INIT * base + (wave / divider)
	self.biker_escape.HEALTH_INIT = self.biker_escape.HEALTH_INIT * base + (wave / divider)
	self.fbi_swat.HEALTH_INIT = self.fbi_swat.HEALTH_INIT * base + (wave / divider)
	self.tank_hw.HEALTH_INIT = self.tank_hw.HEALTH_INIT * base + (wave / divider)
	self.medic.HEALTH_INIT = self.medic.HEALTH_INIT * base + (wave / divider)
	self.bolivian.HEALTH_INIT = self.bolivian.HEALTH_INIT * base + (wave / divider)
	self.bolivian_indoors.HEALTH_INIT = self.bolivian_indoors.HEALTH_INIT * base + (wave / divider)
	self.drug_lord_boss.HEALTH_INIT = self.drug_lord_boss.HEALTH_INIT * base + (wave / divider)
	self.drug_lord_boss_stealth.HEALTH_INIT = self.drug_lord_boss_stealth.HEALTH_INIT * base + (wave / divider)
end