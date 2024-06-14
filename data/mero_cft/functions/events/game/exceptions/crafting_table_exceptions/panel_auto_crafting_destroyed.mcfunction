# == 工作臺例外事件 - 「自動合成」面板被意外破壞 == #
tellraw @a [{"text": ""}, {"text": "【警告】", "color": "#FF0000"}, {"text": "「羊羊合成檯」被意外摧毀！將強制執行解構函式。", "color": "#FF7600"}, {"text": "原因：", "color": "#FF7600"}, {"text": "「自動合成」面板遭到破壞。", "color": "#FA9DFF"}, {"text": "發生位置：", "color": "#FF7600"}, [{"text": "", "color": "#E587FA"}, {"text": "( "}, {"score": {"name": "@s", "objective": "ExceptionPosX"}}, {"text": ", "}, {"score": {"name": "@s", "objective": "ExceptionPosY"}}, {"text": ", "}, {"score": {"name": "@s", "objective": "ExceptionPosZ"}}, {"text": " )"}]]
tag @s add MeroCraftingTable_TableException
