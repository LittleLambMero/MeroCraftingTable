execute if block ~ ~ ~ minecraft:dropper{Items: [{Slot: 1b, id: "minecraft:experience_bottle"}, {Slot: 3b, id: "minecraft:experience_bottle"}, {Slot: 4b, id: "minecraft:potion", components: {"minecraft:potion_contents": {potion: "minecraft:thick"}}}, {Slot: 5b, id: "minecraft:experience_bottle"}, {Slot: 6b, id: "minecraft:experience_bottle"}, {Slot: 7b, id: "minecraft:experience_bottle"}, {Slot: 8b, id: "minecraft:experience_bottle"}]} unless block ~ ~ ~ minecraft:dropper{Items: [{Slot: 0b}]} unless block ~ ~ ~ minecraft:dropper{Items: [{Slot: 2b}]} run function mero_cft:recipes/items/xp_potion/successed
