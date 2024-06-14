# == 合成配方的總執行函式 == #
scoreboard objectives add PlayerCraftingSuccessedStatus dummy
scoreboard players set @s PlayerCraftingSuccessedStatus 0

scoreboard objectives add ItemID dummy
function mero_cft:recipes/register
scoreboard objectives remove ItemID

execute if score @s PlayerCraftingSuccessedStatus matches 1 run function mero_cft:recipes/successed
execute if score @s PlayerCraftingSuccessedStatus matches 0 run function mero_cft:recipes/failed
execute if score @s PlayerCraftingSuccessedStatus matches 0 run tag @s remove MeroCraftingTable_AutoCrafting

execute if entity @s[tag = MeroCraftingTable_AutoCrafting] run function mero_cft:recipe_executor

scoreboard objectives remove PlayerCraftingSuccessedStatus

