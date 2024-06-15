# == 主結構生成 == #
# 合成檯
setblock ~ ~ ~ minecraft:dropper[facing = up]{CustomName: '[{"text": "芒果羊羊", "color": "#D073DA", "bold": true}, {"text": "合成檯", "color": "#0A4EFF"}]'} replace

# 空功能面板
execute as @e[type = minecraft:item, tag = MeroCraftingTable_Material_C] run function mero_cft:main/constructor/structure/build/sign_type/selection

# 為功能面板添加完整資料
function mero_cft:main/constructor/structure/build/func_panels_set_data

# 光源方塊
function mero_cft:main/constructor/structure/build/light
