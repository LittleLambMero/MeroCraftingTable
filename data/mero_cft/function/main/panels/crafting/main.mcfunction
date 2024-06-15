tag @s add MeroCraftingTable_UsingTable
execute as @s at @n[type = minecraft:marker, tag = MeroCraftingTable_MainBody] run function mero_cft:recipe_executor
tag @s remove MeroCraftingTable_UsingTable
