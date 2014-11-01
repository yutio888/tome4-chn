﻿-- ToME - Tales of Maj'Eyal
-- Copyright (C) 2009, 2010, 2011, 2012, 2013 Nicolas Casalini
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.
--
-- Nicolas Casalini "DarkGod"
-- darkgod@te4.org

--------------------------------------------------------------------------
-- The Maze
--------------------------------------------------------------------------

newLore{
	id = "maze-note-1",
	category = "maze",
	name = "diary (the maze)",
	lore = [[亲爱的日记，

因为我的导师生病了，所以这一周课比较少，于是我决定溜去附近的迷宫废墟散散步。我知道如果被抓住了会很麻烦，但是只要我在一两天之内回来的话应该不会有人发现...因为被困在这大山里面实在是太无聊了！我要找些乐子！

我擦，这地方太脏了！我已经在这儿遇到了好几个强盗和好多蛇了，但是没什么能吓倒我这样的三年级魔法师。

我想起来我曾经听说过，这迷宫是黄昏纪时半身人王洛帕用来做监狱的，在那个没有法制的年代，囚犯们就被简简单单的扔到这自生自灭了。

有人说这地方被魔法诅咒之后影响了那些囚犯，让他们变成像公牛一样的野兽，盘踞此地直到今日。太让人兴奋了！！
]],
}

newLore{
	id = "maze-note-2",
	category = "maze",
	name = "diary (the maze)",
	bloodstains = 7,
	lore = [[我太开心了！次元移动让这趟短途旅行变得如此轻而易举。你真应该看看当那个强盗看到我从一堵墙出来，消失在另一堵墙面前，又出现在他背后的时候的那个表情！嘿嘿嘿……

我仍然记得大法师泰尔兰老师关于这个魔法的讲课——“次元穿行魔法操作简单，但是很容易使你依赖它。越是简单的操作越容易让人大意，缺乏警惕。由于缺少判断危险的常识，一些人很快就会让自己处于危险的状况之中。千万留心！”

呸！简直就是放屁！他以为我有那么蠢么？ 另外，我现在非常享受！我正在冒险呢！！

我看到了些东西！我不知道那是什么……但是他很大而且很模糊！在我试着追赶它的时候我竟然迷路了……额，可能这仅仅只是我的想象？不，我确信那一定是很酷的和令人兴奋的什么东西，我得继续探索！]],
}

newLore{
	id = "maze-note-trap",
	category = "maze",
	name = "the perfect killing device",
	lore = [[我为那些走在大殿里面且长着角的野兽设置了完美的陷阱。它们铁定避不开这个神奇的新玩意儿——精湛技巧与致命天赋的完美融合。
	
啊，我多么期待把那些野兽的头颅作为战利品挂满我的墙壁啊——那将是多么令人骄傲和自豪的收藏！

这个新发明既精致又简单，尽管如此我还是花了好几个月的时间来让它的配方变得完美。有两个小药瓶被连接一起——一个瓶子里面装着磨碎的毒芹，另一个里面装着我小心准备好的锌混合物。当两个小药瓶破碎的时候，里面的物质和空气发生化学反应，就会一阵一阵的喷出有剧毒的雾！

这毒非常有效，在瞬间就能杀死他们。所有我要做的就是小心的将小药瓶藏在一块很薄的石板下面，然后等待我的猎物踩到陷阱上——噗！他就死了！

为了让我的整个打猎季从头到尾都能持续战斗，我准备了非常多的小药瓶。明年的打猎季恐怕我收藏的战利品数量就要赶上国王的了！

我好像把一个瓶子放错地方了……我敢肯定它应该在附近的某处。

不，不！我……我……（一阵痉挛）……好痛苦，好痛……

#{italic}#你找到了一个布满灰尘的箱子，里面都是装满粉末的小药瓶。它们好像还能用。#{normal}#]],
	on_learn = function(who)
		local p = game.party:findMember{main=true}
		if p:knowTalent(p.T_TRAP_MASTERY) then
			p:learnTalent(p.T_POISON_GAS_TRAP, 1, nil, {no_unlearn=true})
			game.log("#LIGHT_GREEN#你学会了制造毒气陷阱！")
		end
	end,
}