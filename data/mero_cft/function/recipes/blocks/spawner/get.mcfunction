execute if entity @s[tag = !MeroCraftingTable_UsingTable] run function mero_cft:main/execute_failed
execute if entity @s[tag = !MeroCraftingTable_UsingTable] run return -1

scoreboard players set @s ItemID 2
function mero_cft:recipes/items_manager
