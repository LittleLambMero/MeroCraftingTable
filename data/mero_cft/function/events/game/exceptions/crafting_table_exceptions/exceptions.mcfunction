# == 工作臺例外事件處理 == #
function mero_cft:events/game/exceptions/general_func/get_exceptions_pos

execute unless block ~ ~ ~ minecraft:dropper run function mero_cft:events/game/exceptions/crafting_table_exceptions/table_destroyed
execute if block ~ ~1 ~ minecraft:air if entity @s[tag = !MeroCraftingTable_TableException] run function mero_cft:events/game/exceptions/crafting_table_exceptions/panel_crafting_destroyed
execute if block ~1 ~ ~ minecraft:air if entity @s[tag = !MeroCraftingTable_TableException] run function mero_cft:events/game/exceptions/crafting_table_exceptions/panel_auto_crafting_destroyed
execute if block ~ ~ ~1 minecraft:air if entity @s[tag = !MeroCraftingTable_TableException] run function mero_cft:events/game/exceptions/crafting_table_exceptions/panel_mero_say_hi_destroyed
execute if block ~-1 ~ ~ minecraft:air if entity @s[tag = !MeroCraftingTable_TableException] run function mero_cft:events/game/exceptions/crafting_table_exceptions/panel_mute_destroyed
execute if block ~ ~ ~-1 minecraft:air if entity @s[tag = !MeroCraftingTable_TableException] run function mero_cft:events/game/exceptions/crafting_table_exceptions/panel_destroy_destroyed

execute if entity @s[tag = MeroCraftingTable_TableException] run playsound minecraft:entity.iron_golem.repair ambient @a ~ ~ ~ 1 0.7 1
execute if entity @s[tag = MeroCraftingTable_TableException] run kill @e[type = item, distance = ..3]
execute if entity @s[tag = MeroCraftingTable_TableException] run function mero_cft:main/panels/destroy/main
kill @s[tag = MeroCraftingTable_TableException]
