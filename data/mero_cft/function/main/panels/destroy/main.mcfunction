# 歸還素材
function mero_cft:main/panels/destroy/giveback_materials

# 拆除光源
function mero_cft:main/panels/destroy/light

# 拆除告示牌
function mero_cft:main/panels/destroy/sign

# 拆除工作臺
setblock ~ ~ ~ minecraft:air destroy
kill @n[type = minecraft:item, tag = !MeroCraftingTable_NotMaterial, nbt = {Item: {id: "minecraft:dropper", count: 1}}]

# 移除實體
kill @s

# 執行成功
execute as @a[distance = ..8] run function mero_cft:main/panels/destroy/success
