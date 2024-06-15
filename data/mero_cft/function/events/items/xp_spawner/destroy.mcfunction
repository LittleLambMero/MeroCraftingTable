execute unless entity @s[nbt = {SelectedItem: {id: "minecraft:written_book", components: {"minecraft:custom_data": {ItemID: "mero_cft:destroy_xp_spawner"}}}}] run function mero_cft:main/execute_failed
execute unless entity @s[nbt = {SelectedItem: {id: "minecraft:written_book", components: {"minecraft:custom_data": {ItemID: "mero_cft:destroy_xp_spawner"}}}}] run return -1

function mero_cft:events/items/xp_spawner/destroy/check
execute if entity @s[tag = !MeroCraftingTable_CheckPassed] run function mero_cft:events/items/xp_spawner/destroy/failed
execute if entity @s[tag = !MeroCraftingTable_CheckPassed] run return -1

function mero_cft:events/items/xp_spawner/destroy/operation

tag @s remove MeroCraftingTable_CheckPassed
