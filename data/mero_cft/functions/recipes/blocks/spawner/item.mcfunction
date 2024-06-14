execute if entity @s[tag = !MeroCraftingTable_UsingTable] run function mero_cft:main/execute_failed
execute if entity @s[tag = !MeroCraftingTable_UsingTable] run return -1

give @s minecraft:spawner{display: {Name: '{"text": "生怪磚", "color": "#AA63EB", "italic": false}', Lore: ['[{"text": "", "color": "green", "italic": false}, {"text": "一個罕見的生怪磚，沒想到可以做出來吧！"}]', '[{"text": "", "color": "green", "italic": false}, {"text": "但請不要放在地上！因為一旦放下就無法收回了。"}]', '[{"text": "", "color": "green", "italic": false}, {"text": "請將這個生怪磚作為合成材料使用。"}]', '{"text": ""}', '[{"text": "稀有度：", "color": "#FA0056", "italic": false}, {"text": "史詩", "color": "#AA63EB", "italic": false}]']}, HideFlags: 255, ItemID: "mero_cft:spawner"} 1
