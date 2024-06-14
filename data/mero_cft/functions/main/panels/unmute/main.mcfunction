tellraw @s[tag = MeroCraftingTable_MuteCrafting] [{"text": "【系統訊息】", "color": "aqua"}, {"text": "您已停用靜音模式", "color": "gold"}]
playsound block.note_block.bit block @s ~ ~ ~ 1 1 1
tag @s[tag = MeroCraftingTable_MuteCrafting] remove MeroCraftingTable_MuteCrafting
execute as @e[type = minecraft:marker, tag = MeroCraftingTable_MainBody, sort = nearest, limit = 1] at @s run function mero_cft:main/panels/unmute/change_interface
