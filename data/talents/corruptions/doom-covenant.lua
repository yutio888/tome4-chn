﻿t_talent_name["T_DARK_REIGN"] = "黑暗支配"
talentInfoCHN["T_DARK_REIGN"] = function(self, t)
		return ([[你 与 阴 影 的 联 系 更 加 紧 密 了 。
		 每 次 你 用 暗 影 伤 害 杀 死 生 物 时 ，你 获 得 8%% 全 体 伤 害 吸 收 ，持 续 10 回 合 。
		 这 个 效 果 能 叠 加 至 最 多 %d 层 。]]):
		format(t.getStack(self, t))
	end

t_talent_name["T_DREAD_END"] = "黑暗终结"
talentInfoCHN["T_DREAD_END"] = function(self, t)
		return ([[你 学 会 利 用 死 亡 来 获 取 力 量 。
		 当 黑 暗 支 配 开 启 ，每 次 你 使 用 非 暗 影 伤 害 杀 死 生 物 时 ，在 半 径 1 的 范 围 内 产 生 黑 暗 能 量 池 ，持 续 5 回 合 。
		 任 何 站 在 里 面 的 敌 人 每 回 合 将 受 到 %0.2f 点 暗 影 伤 害 。
		 这 个 效 果 每 回 合 最 多 触 发 一 次 。
		 伤 害 受 法 术 强 度 加 成 。]])
		:format(t.getDamage(self, t))
end

t_talent_name["T_BLOOD_PACT"] = "鲜血契约"
talentInfoCHN["T_BLOOD_PACT"] =  function(self, t)
		return ([[当 黑 暗 支 配 开 启 时 ，你 能 吸 取 自 己 的 体 力 ，转 化 为 %d 活 力 。
		 技 能 等 级 5 时 ，5 回 合 内 你 造 成 的 所 有 伤 害 转 化 为 暗 影 伤 害 。]]):
		format(t.getVim(self, t))
	end

t_talent_name["T_ERUPTING_DARKNESS"] = "黑暗爆发"
talentInfoCHN["T_ERUPTING_DARKNESS"] = function(self, t)
		local dam = t.getDamage(self, t)
		return ([[当 黑 暗 终 结 制 造 出 黑 暗 能 量 池 时 ，你 能 将 愤 怒 集 中 在 内 ，将 其 转 变 为 火 山 。
		 半 径 %d 内 至 多 %d 个 能 量 池 将 会 喷 发 ，转 化 为 火 山 ，持 续 %d 回 合 。
		 每 回 合 火 山 将 喷 射 火 焰 巨 石 ，造 成 %0.2f 火 焰 与 %0.2f 物 理 伤 害 。
		 效 果 受 法 术 强 度 加 成 。]]):
		format(self:getTalentRadius(t), t.getNb(self, t), t.getDuration(self, t), dam/2,dam/2)
	end