# == 預設減少合成檯內物品的數量，值為 1 == #
scoreboard objectives add TempStorage dummy

execute store result score #slot TempStorage run data get block ~ ~ ~ Items[{Slot: 0b}].count
execute store result block ~ ~ ~ Items[{Slot: 0b}].count byte 1.0 run scoreboard players remove #slot TempStorage 1
execute if score #slot TempStorage matches ..0 run data modify block ~ ~ ~ Items[{Slot: 0b}] set value {}

execute store result score #slot TempStorage run data get block ~ ~ ~ Items[{Slot: 1b}].count
execute store result block ~ ~ ~ Items[{Slot: 1b}].count byte 1.0 run scoreboard players remove #slot TempStorage 1
execute if score #slot TempStorage matches ..0 run data modify block ~ ~ ~ Items[{Slot: 1b}] set value {}

execute store result score #slot TempStorage run data get block ~ ~ ~ Items[{Slot: 2b}].count
execute store result block ~ ~ ~ Items[{Slot: 2b}].count byte 1.0 run scoreboard players remove #slot TempStorage 1
execute if score #slot TempStorage matches ..0 run data modify block ~ ~ ~ Items[{Slot: 2b}] set value {}

execute store result score #slot TempStorage run data get block ~ ~ ~ Items[{Slot: 3b}].count
execute store result block ~ ~ ~ Items[{Slot: 3b}].count byte 1.0 run scoreboard players remove #slot TempStorage 1
execute if score #slot TempStorage matches ..0 run data modify block ~ ~ ~ Items[{Slot: 3b}] set value {}

execute store result score #slot TempStorage run data get block ~ ~ ~ Items[{Slot: 4b}].count
execute store result block ~ ~ ~ Items[{Slot: 4b}].count byte 1.0 run scoreboard players remove #slot TempStorage 1
execute if score #slot TempStorage matches ..0 run data modify block ~ ~ ~ Items[{Slot: 4b}] set value {}

execute store result score #slot TempStorage run data get block ~ ~ ~ Items[{Slot: 5b}].count
execute store result block ~ ~ ~ Items[{Slot: 5b}].count byte 1.0 run scoreboard players remove #slot TempStorage 1
execute if score #slot TempStorage matches ..0 run data modify block ~ ~ ~ Items[{Slot: 5b}] set value {}

execute store result score #slot TempStorage run data get block ~ ~ ~ Items[{Slot: 6b}].count
execute store result block ~ ~ ~ Items[{Slot: 6b}].count byte 1.0 run scoreboard players remove #slot TempStorage 1
execute if score #slot TempStorage matches ..0 run data modify block ~ ~ ~ Items[{Slot: 6b}] set value {}

execute store result score #slot TempStorage run data get block ~ ~ ~ Items[{Slot: 7b}].count
execute store result block ~ ~ ~ Items[{Slot: 7b}].count byte 1.0 run scoreboard players remove #slot TempStorage 1
execute if score #slot TempStorage matches ..0 run data modify block ~ ~ ~ Items[{Slot: 7b}] set value {}

execute store result score #slot TempStorage run data get block ~ ~ ~ Items[{Slot: 8b}].count
execute store result block ~ ~ ~ Items[{Slot: 8b}].count byte 1.0 run scoreboard players remove #slot TempStorage 1
execute if score #slot TempStorage matches ..0 run data modify block ~ ~ ~ Items[{Slot: 8b}] set value {}

scoreboard objectives remove TempStorage
