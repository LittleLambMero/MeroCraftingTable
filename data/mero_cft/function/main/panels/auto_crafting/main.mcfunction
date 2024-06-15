tellraw @s [{"text": "【系統訊息】", "color": "aqua"}, {"text": "正在執行自動合成...", "color": "gold"}]
tag @s add MeroCraftingTable_AutoCrafting
tag @s add MeroCraftingTable_MuteCrafting
function mero_cft:main/panels/crafting/main
tag @s remove MeroCraftingTable_AutoCrafting
tag @s remove MeroCraftingTable_MuteCrafting
tellraw @s [{"text": "【系統訊息】", "color": "aqua"}, {"text": "執行完畢！", "color": "green"}]
