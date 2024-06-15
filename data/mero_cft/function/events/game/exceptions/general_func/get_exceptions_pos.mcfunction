# == 取得例外事件的發生位置 == #
execute store result score @s ExceptionPosX run data get entity @s Pos[0] 1.0
execute store result score @s ExceptionPosY run data get entity @s Pos[1] 1.0
execute store result score @s ExceptionPosZ run data get entity @s Pos[2] 1.0
