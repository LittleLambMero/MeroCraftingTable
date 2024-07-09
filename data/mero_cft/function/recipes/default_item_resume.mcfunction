# == 預設減少合成檯內物品的數量，值為 1 == #
scoreboard objectives add TempStorage dummy

execute store result score #slot TempStorage run data get block ~ ~ ~ Items[{Slot: 0b}].count
execute if score #slot TempStorage matches 1.. store result block ~ ~ ~ Items[{Slot: 0b}].count byte 1.0 run scoreboard players remove #slot TempStorage 1
execute if score #slot TempStorage matches ..0 run item replace block ~ ~ ~ container.0 with air 1

execute store result score #slot TempStorage run data get block ~ ~ ~ Items[{Slot: 1b}].count
execute if score #slot TempStorage matches 1.. store result block ~ ~ ~ Items[{Slot: 1b}].count byte 1.0 run scoreboard players remove #slot TempStorage 1
execute if score #slot TempStorage matches ..0 run item replace block ~ ~ ~ container.1 with air 1

execute store result score #slot TempStorage run data get block ~ ~ ~ Items[{Slot: 2b}].count
execute if score #slot TempStorage matches 1.. store result block ~ ~ ~ Items[{Slot: 2b}].count byte 1.0 run scoreboard players remove #slot TempStorage 1
execute if score #slot TempStorage matches ..0 run item replace block ~ ~ ~ container.2 with air 1

execute store result score #slot TempStorage run data get block ~ ~ ~ Items[{Slot: 3b}].count
execute if score #slot TempStorage matches 1.. store result block ~ ~ ~ Items[{Slot: 3b}].count byte 1.0 run scoreboard players remove #slot TempStorage 1
execute if score #slot TempStorage matches ..0 run item replace block ~ ~ ~ container.3 with air 1

execute store result score #slot TempStorage run data get block ~ ~ ~ Items[{Slot: 4b}].count
execute if score #slot TempStorage matches 1.. store result block ~ ~ ~ Items[{Slot: 4b}].count byte 1.0 run scoreboard players remove #slot TempStorage 1
execute if score #slot TempStorage matches ..0 run item replace block ~ ~ ~ container.4 with air 1

execute store result score #slot TempStorage run data get block ~ ~ ~ Items[{Slot: 5b}].count
execute if score #slot TempStorage matches 1.. store result block ~ ~ ~ Items[{Slot: 5b}].count byte 1.0 run scoreboard players remove #slot TempStorage 1
execute if score #slot TempStorage matches ..0 run item replace block ~ ~ ~ container.5 with air 1

execute store result score #slot TempStorage run data get block ~ ~ ~ Items[{Slot: 6b}].count
execute if score #slot TempStorage matches 1.. store result block ~ ~ ~ Items[{Slot: 6b}].count byte 1.0 run scoreboard players remove #slot TempStorage 1
execute if score #slot TempStorage matches ..0 run item replace block ~ ~ ~ container.6 with air 1

execute store result score #slot TempStorage run data get block ~ ~ ~ Items[{Slot: 7b}].count
execute if score #slot TempStorage matches 1.. store result block ~ ~ ~ Items[{Slot: 7b}].count byte 1.0 run scoreboard players remove #slot TempStorage 1
execute if score #slot TempStorage matches ..0 run item replace block ~ ~ ~ container.7 with air 1

execute store result score #slot TempStorage run data get block ~ ~ ~ Items[{Slot: 8b}].count
execute if score #slot TempStorage matches 1.. store result block ~ ~ ~ Items[{Slot: 8b}].count byte 1.0 run scoreboard players remove #slot TempStorage 1
execute if score #slot TempStorage matches ..0 run item replace block ~ ~ ~ container.8 with air 1

scoreboard objectives remove TempStorage
