# == 素材合成 == #
function mero_cft:main/constructor/materials_combination/a
function mero_cft:main/constructor/materials_combination/b
function mero_cft:main/constructor/materials_combination/c

execute as @s[tag = MeroCraftingTable_Material_A, tag = !MeroCraftingTable_NotMaterial] at @s if entity @e[distance = ..1, tag = MeroCraftingTable_Material_B, tag = !MeroCraftingTable_NotMaterial] if entity @e[distance = ..1, tag = MeroCraftingTable_Material_C, tag = !MeroCraftingTable_NotMaterial] if entity @a[distance = ..5, limit = 1] unless entity @e[type = minecraft:marker, limit = 1, tag = MeroCraftingTable_MainBody, distance = ..8] if block ~ ~ ~ minecraft:air if block ~1 ~ ~ minecraft:air if block ~ ~ ~1 minecraft:air if block ~-1 ~ ~ minecraft:air if block ~ ~ ~-1 minecraft:air run tag @s add Combining_OK
