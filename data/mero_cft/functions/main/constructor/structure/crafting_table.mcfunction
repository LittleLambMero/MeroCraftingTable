# == 主體ㄉ建構函式 == #
# 生成標記，讓工作檯也有像實體一樣的功能並輔助執行其他函式
summon minecraft:marker ~ ~ ~ {data: {}, Tags: ["MeroCraftingTable_MainBody", "MeroCraftingTable_BuildProccess"]}

# 生成結構
execute as @e[type = minecraft:marker, tag = MeroCraftingTable_BuildProccess] at @s run function mero_cft:main/constructor/structure/build/body

# 建構完成要執行的行為函式
execute as @e[type = minecraft:marker, tag = MeroCraftingTable_BuildProccess] at @s run function mero_cft:main/constructor/structure/build/success

# 結束建構程序
execute as @e[type = minecraft:marker, tag = MeroCraftingTable_BuildProccess] run tag @s remove MeroCraftingTable_BuildProccess

# 清除組合素材
execute as @e[type = minecraft:item] run function mero_cft:main/constructor/structure/clear_materials
