# == 被觸發時執行 == #
tag @s[advancements = {mero_cft:events/drunk_xp_potion = true}] add MeroCraftingTable_Event_GiveExp

execute if entity @s[tag =! MeroCraftingTable_Event_GiveExp] run tellraw @s [{"text": "函式執行失敗", "color": "#E51E00"}]
execute if entity @s[tag =! MeroCraftingTable_Event_GiveExp] run return -1

function mero_cft:events/items/xp_potion/give_exp

advancement revoke @s only mero_cft:events/drunk_xp_potion
tag @s remove MeroCraftingTable_Event_GiveExp
