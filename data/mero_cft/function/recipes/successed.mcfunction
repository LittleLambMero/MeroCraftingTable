particle minecraft:composter ~0.5 ~1.3 ~0.5 0.3 0.2 0.3 0 30
execute if entity @s[tag = MeroCraftingTable_MuteCrafting] run return 0

playsound minecraft:block.anvil.use block @a[distance = ..8] ~ ~ ~ 1 1 0
tellraw @s [{"text": "物品合成成功!", "bold": true, "color": "green"}]
