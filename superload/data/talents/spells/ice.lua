local _M = loadPrevious(...)

registerTalentTranslation{
	id = "T_FREEZE",
	name = "冻结",
	info = function(self, t)
		local damage = t.getDamage(self, t)
		return ([[凝聚周围的水冻结目标 %d 回合并对其造成 %0.2f 伤害。 
		如果目标为友好生物，冷却时间减少 33%% 。 %s
		受法术强度影响，伤害有额外加成。]]):format(t.getDuration(self, t), damDesc(self, DamageType.COLD, damage), necroEssenceDead(self, true) and "\n影响半径2码范围内的所有目标。" or "")
	end,
}

registerTalentTranslation{
	id = "T_FROZEN_GROUND",
	name = "冻结大地",
	info = function(self, t)
		local damage = t.getDamage(self, t)
		local radius = self:getTalentRadius(t)
		return ([[制造一股冷空气围绕着你，在 %d 码半径范围内对目标造成 %0.2f 冰冷伤害并冻结它们的双脚 4 回合。 
		被冻结双脚的单位可以动作但无法移动。 
		该技能每击中一个处于湿润状态的目标，将会减少寒冰破碎的技能冷却时间 2 回合。
		受法术强度影响，伤害有额外加成。]]):format(radius, damDesc(self, DamageType.COLD, damage))
	end,
}

registerTalentTranslation{
	id = "T_SHATTER",
	name = "寒冰破碎",
	info = function(self, t)
		local damage = t.getDamage(self, t)
		local targetcount = t.getTargetCount(self, t)
		return ([[打破视线范围内所有已冻结目标，造成 %0.2f 冰冷伤害。 
		基于目标品级，有额外效果： 
		* 动物类会被立刻杀死 
		* 对普通单位增加 50%% 暴击率 
		* 对精英单位增加 25%% 暴击率 
		所有受影响单位将进入湿润状态。
		它最多可影响 %d 个敌方单位。 
		受法术强度影响，伤害有额外加成。]]):
		format(damDesc(self, DamageType.COLD, damage), targetcount)
	end,
}

registerTalentTranslation{
	id = "T_UTTERCOLD",
	name = "绝对零度",
	info = function(self, t)
		local damageinc = t.getColdDamageIncrease(self, t)
		local ressistpen = t.getResistPenalty(self, t)
		local pierce = t.getPierce(self, t)
		return ([[使你周围的温度骤降，增加你 %0.1f%% 冰系伤害并无视目标 %d%% 冰冷抵抗。 
		同时，你的破冰动作变的更加容易，减少 %d%% 冰层对你的攻击伤害格挡值。]])
		:format(damageinc, ressistpen, pierce)
	end,
}


return _M
