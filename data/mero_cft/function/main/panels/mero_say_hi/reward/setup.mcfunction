# == 放置經驗值產生器 == #
execute unless entity @s[nbt = {SelectedItem: {id: "minecraft:written_book", components: {"minecraft:custom_data": {ItemID: "mero_cft:using_reward"}}}}] run function mero_cft:main/execute_failed
execute unless entity @s[nbt = {SelectedItem: {id: "minecraft:written_book", components: {"minecraft:custom_data": {ItemID: "mero_cft:using_reward"}}}}] run return -1

function mero_cft:main/panels/mero_say_hi/reward/setup/check
execute if entity @s[tag = !MeroCraftingTable_EasterEggReward_CheckPassed] run function mero_cft:main/panels/mero_say_hi/reward/setup/failed
execute if entity @s[tag = !MeroCraftingTable_EasterEggReward_CheckPassed] run return -1

function mero_cft:main/panels/mero_say_hi/reward/setup/xp_spawner

tag @s remove MeroCraftingTable_EasterEggReward_CheckPassed
