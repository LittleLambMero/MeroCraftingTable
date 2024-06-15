# == （進度觸發）給予玩家經驗值 == #
execute if entity @s[tag = !MeroCraftingTable_Event_GiveExp] run tellraw @s [{"text": "函式執行失敗", "color": "#E51E00"}]
execute if entity @s[tag = !MeroCraftingTable_Event_GiveExp] run return -1

xp add @s 45 points
