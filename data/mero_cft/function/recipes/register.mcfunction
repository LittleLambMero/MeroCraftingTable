# == 註冊自定義配方 == #
function mero_cft:recipes/recipes_manager

# 雪球炸彈配方表
execute if score @s PlayerCraftingSuccessedStatus matches 1 run return 0
function snow_bomb:recipes/recipes_manager

# 自動採礦機配方表
execute if score @s PlayerCraftingSuccessedStatus matches 1 run return 0
function simple_automatic_miner:recipes/recipes_manager
