execute if entity @s[tag = !MeroCraftingTable_UsingTable] run function mero_cft:main/execute_failed
execute if entity @s[tag = !MeroCraftingTable_UsingTable] run return -1

give @s minecraft:potion{display: {Name: '{"text": "經驗藥水", "color": "#0055F4", "italic": false}', Lore: ['[{"text": "", "color": "green", "italic": false}, {"text": "濃縮了大量經驗的藥水瓶，服用完畢會立即"}]', '[{"text": "", "color": "green", "italic": false}, [{"text": "獲得"}, {"text": " 45 ", "color": "yellow"}, {"text": "點經驗值"}]]', '{"text": ""}', '[{"text": "稀有度：", "color": "#FA0056", "italic": false}, {"text": "稀有", "color": "#0055F4", "italic": false}]']}, CustomPotionColor: 9568000, HideFlags: 255, Enchantments: [{id: "minecraft:fortune", lvl: 1s}], ItemID: "mero_cft:xp_potion"} 1
