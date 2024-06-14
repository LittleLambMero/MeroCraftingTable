# == 主函式區 == #
# 建構
execute as @e[type = minecraft:item, nbt = {OnGround: true}] at @s run function mero_cft:main/constructor/main
