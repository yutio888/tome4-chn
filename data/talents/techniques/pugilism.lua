local Talents = require "engine.interface.ActorTalents"
local damDesc = Talents.main_env.damDesc
local DamageType = require "engine.DamageType"

Talents.talents_def.T_STRIKING_STANCE.name= "攻击姿态"
Talents.talents_def.T_STRIKING_STANCE.info= function(self, t)
		local attack = t.getAttack(self, t)
		local damage = t.getDamage(self, t)
		return ([[增 加 你 %d 命 中。 你 攻 击 系 技 能 ( 拳 术、 终 结 技 ) 伤 害 增 加 %d%% , 同 时 减 少 %d 受 到 的 伤 害。
		受 敏 捷 影 响， 伤 害 按 比 例 加 成 。受 力 量 影 响，伤 害 减 免 有 额 外 加 成。 ]]):
		format(attack, damage, t.getFlatReduction(self, t))
	end
Talents.talents_def.T_DOUBLE_STRIKE.name= "双重打击"
Talents.talents_def.T_DOUBLE_STRIKE.info= function(self, t)
		local damage = t.getDamage(self, t) * 100
		return ([[Deliver two quick punches that deal %d%% damage each, and switch your stance to Striking Stance.  If you already have Striking Stance active and Double Strike isn't on cooldown, this talent will automatically replace your normal attacks (and trigger the cooldown).
		If either jab connects, you earn one combo point.  At talent level 4 or greater, if both jabs connect, you'll earn two combo points.]])
		:format(damage)
	end
Talents.talents_def.T_SPINNING_BACKHAND.name= "旋风打击"
Talents.talents_def.T_SPINNING_BACKHAND.info= function(self, t)
		local damage = t.getDamage(self, t) * 100
		local charge =t.chargeBonus(self, t, t.range(self, t)-1)*100
		return ([[对 你 面 前 的 敌 人 使 用 一 次 旋 风 打 击， 造 成 %d%% 伤 害。 
		如 果 你 离 目 标 较 远， 旋 转 时 你 会 自 动 前 行， 根 据 移 动 距 离 增 加 至 多 %d%% 伤 害。 
		此 次 攻 击 会 移 除 任 何 你 正 在 维 持 的 抓 取 效 果 并 增 加 1 点 连 击 点。 
		在 等 级 4 或 更 高 时， 你 每 次 连 击 均 会 获 得 1 点 连 击 点。 ]])
		:format(damage, charge)
	end
Talents.talents_def.T_AXE_KICK.name= "斧踢"
Talents.talents_def.T_AXE_KICK.info= function(self, t)
		local damage = t.getDamage(self, t) * 100
		return ([[ 施 展 一 次 毁 灭 性 的 的 踢 技 ，造 成 %d%% 伤 害 。
		 如 果 攻 击 命 中 ， 对 方 的 大 脑 受  到 伤 害 ，不 能 使 用 技 能 ， 持 续 %d 回 合 ， 同 时 你 获 得 2连 击 点。 ]])
		:format(damage, t.getDuration(self, t))
	end
Talents.talents_def.T_FLURRY_OF_FISTS.name= "流星拳"
Talents.talents_def.T_FLURRY_OF_FISTS.info= function(self, t)
		local damage = t.getDamage(self, t) * 100
		return ([[对 目 标 造 成 3 次 快 速 打 击， 每 击 造 成 %d%% 伤 害。 
		此 攻 击 使 你 得 到 1 点 连 击 点。 
		在 等 级 4 或 更 高 时， 你 每 次 连 击 都 可 以 获 得 1 点 连 击 点。]])
		:format(damage)
	end

