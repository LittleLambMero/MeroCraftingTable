# == 預設減少合成檯內物品的數量，值為 1 == #
scoreboard objectives add TempStorage dummy

execute store result score #slot TempStorage run data get block ~ ~ ~ Items[{Slot: 0b}].Count
execute store result block ~ ~ ~ Items[{Slot: 0b}].Count byte 1.0 run scoreboard players remove #slot TempStorage 1
execute store result score #slot TempStorage run data get block ~ ~ ~ Items[{Slot: 1b}].Count
execute store result block ~ ~ ~ Items[{Slot: 1b}].Count byte 1.0 run scoreboard players remove #slot TempStorage 1
execute store result score #slot TempStorage run data get block ~ ~ ~ Items[{Slot: 2b}].Count
execute store result block ~ ~ ~ Items[{Slot: 2b}].Count byte 1.0 run scoreboard players remove #slot TempStorage 1
execute store result score #slot TempStorage run data get block ~ ~ ~ Items[{Slot: 3b}].Count
execute store result block ~ ~ ~ Items[{Slot: 3b}].Count byte 1.0 run scoreboard players remove #slot TempStorage 1
execute store result score #slot TempStorage run data get block ~ ~ ~ Items[{Slot: 4b}].Count
execute store result block ~ ~ ~ Items[{Slot: 4b}].Count byte 1.0 run scoreboard players remove #slot TempStorage 1
execute store result score #slot TempStorage run data get block ~ ~ ~ Items[{Slot: 5b}].Count
execute store result block ~ ~ ~ Items[{Slot: 5b}].Count byte 1.0 run scoreboard players remove #slot TempStorage 1
execute store result score #slot TempStorage run data get block ~ ~ ~ Items[{Slot: 6b}].Count
execute store result block ~ ~ ~ Items[{Slot: 6b}].Count byte 1.0 run scoreboard players remove #slot TempStorage 1
execute store result score #slot TempStorage run data get block ~ ~ ~ Items[{Slot: 7b}].Count
execute store result block ~ ~ ~ Items[{Slot: 7b}].Count byte 1.0 run scoreboard players remove #slot TempStorage 1
execute store result score #slot TempStorage run data get block ~ ~ ~ Items[{Slot: 8b}].Count
execute store result block ~ ~ ~ Items[{Slot: 8b}].Count byte 1.0 run scoreboard players remove #slot TempStorage 1

scoreboard objectives remove TempStorage
