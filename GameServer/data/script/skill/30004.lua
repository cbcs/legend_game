--光佑术
function OnUseSkill_30004(level,etype1,eid1,etype2,eid2)
	local percent = {5,6,7,8,9}
	local maxhp = 1
	local value = 1
	local hp2 = 1
	local list = s_getTeamEntry(etype1,eid1,20)
	for i = 1,table.getn(list), 2 do
		if list[i+1] ~= eid1 then
			hp2 = s_getValue(list[i],list[i+1],VALUE_TYPE_HP)
			maxhp2 = s_getValue(list[i],list[i+1],VALUE_TYPE_MAXHP)
			if maxhp2 * percent[level]/100 >= maxhp2 - hp2 then
				value = maxhp2 * percent[level]/100
			else
				value = maxhp2 - hp2
			end
			s_addValue(list[i],list[i+1],VALUE_TYPE_HP,value)
		end
	end
	--符文相关
	if s_getRuneDur(eid1,30004) > 0 then
		s_reduceRuneDur(eid1,30004)
	end
	ShowAttack(30004,etype1,eid1,etype2,eid2)
end
