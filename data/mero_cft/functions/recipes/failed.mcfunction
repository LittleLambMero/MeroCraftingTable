particle minecraft:smoke ~0.5 ~1.3 ~0.5 0.3 0.2 0.3 0 40
execute if entity @s[tag = MeroCraftingTable_MuteCrafting] run return 0

playsound minecraft:entity.villager.no neutral @a[distance=..8] ~ ~ ~ 1 1 0
tellraw @s [{"text":"製作失敗，請檢查合成方式!","bold":true,"color":"red"}]
