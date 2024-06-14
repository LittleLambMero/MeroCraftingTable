# == 執行建構 == #
# 合成偵測
function mero_cft:main/constructor/materials_combination/combined

# 如果滿足合成條件，啟動建構函式
execute as @s[tag = Combining_OK] at @s align xyz run function mero_cft:main/constructor/structure/crafting_table
