# == 執行器 == #
# 儲存例外事件發生位置
scoreboard objectives add ExceptionPosX dummy
scoreboard objectives add ExceptionPosY dummy
scoreboard objectives add ExceptionPosZ dummy

# 各種事件 或 事件組合
execute as @e[type = minecraft:text_display, tag = MeroCraftingTable_ExpSpawner] at @s unless block ~ ~-1.2 ~ minecraft:spawner run function mero_cft:events/game/exceptions/xp_spawner_destroyed
execute as @e[type = minecraft:text_display, tag = MeroCraftingTable_SpecialExpSpawner] at @s unless block ~ ~-1.2 ~ minecraft:spawner run function mero_cft:events/game/exceptions/special_xp_spawner_destroyed
execute as @e[type = minecraft:marker, tag = MeroCraftingTable_MainBody] at @s run function mero_cft:events/game/exceptions/crafting_table_exceptions/exceptions

scoreboard objectives remove ExceptionPosX
scoreboard objectives remove ExceptionPosY
scoreboard objectives remove ExceptionPosZ
