RoleTaskInfo21008 =
{
	subtasknum = 2,
	parent = 20001,
	subtask1 =
	{
		traceend = [[<p><newline/><n>  回复：</n><n></n><goto id="60098" mapid="6" flagpoint="1" taskid="21008"/></p>]],
		onacceptcheck =
		{
			{s_checkTaskCurRing,{20001,1,10}},
			{s_checkCorps,},
		},
		task = {s_taskTalk,{45112,60098}},
	},
	subtask2 =
	{
		traceend = [[<p><newline/><n>  回复：</n><n></n><goto id="45112" mapid="101" flagpoint="1" taskid="21008"/></p>]],
		task = {s_taskTalk,{60098,45112}},
	},
}
