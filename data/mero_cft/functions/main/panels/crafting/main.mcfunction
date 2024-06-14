tag @s add MeroCraftingTable_UsingTable
execute as @s at @e[type = minecraft:marker, tag = MeroCraftingTable_MainBody, sort = nearest, limit = 1] run function mero_cft:recipe_executor
tag @s remove MeroCraftingTable_UsingTable
