playsound minecraft:entity.goat.ambient voice @s ~ ~ ~ 1.0 1.0 1.0
execute if entity @s[tag = MeroCraftingTable_GotEasterEggReward] run return 0

tellraw @s ["", {"text": "<littlelamb_mero>", "color": "#D76DDB", "hoverEvent": {"action": "show_text", "contents": ["", {"text": "芒果羊羊\n", "color": "#D76DDB"}, {"text": "類型：羊咩咩\n"}, {"text": "羊咩咩是沒有 UUID ㄉ鼻要看了(′゜ω。‵)", "color": "#FFFC94"}]}, "clickEvent": {"action": "run_command", "value": "/function mero_cft:main/panels/mero_say_hi/easteregg_reward"}}, {"text": " 歐咩嘎這都能被尼發現(;ˊ・∀・)", "color": "#70DCF9"}]
tellraw @s ["", {"text": "<littlelamb_mero>", "color": "#D76DDB", "hoverEvent": {"action": "show_text", "contents": ["", {"text": "芒果羊羊\n", "color": "#D76DDB"}, {"text": "類型：羊咩咩\n"}, {"text": "羊咩咩是沒有 UUID ㄉ鼻要看了(′゜ω。‵)", "color": "#FFFC94"}]}, "clickEvent": {"action": "run_command", "value": "/function mero_cft:main/panels/mero_say_hi/easteregg_reward"}}, {"text": " 那就送尼這個當作找到彩蛋ㄉ獎勵吧咩", "color": "#70DCF9"}]
give @s written_book[minecraft:item_name= '[{"text": "", "italic": false}, {"text": "彩蛋獎勵", "color": "aqua"}, {"text": " - "}, {"text": "優良經驗值產生器 (放置)", "color": "gold"}]', lore= ['[{"text": "「芒果羊羊自定義合成檯」資料包", "color": "#D76DDB", "italic": false}, {"text": "的彩蛋獎勵", "color": "white", "italic": false}]', '{"text": "用來放置經驗值產生器，僅限一次", "color": "white", "italic": false}'], minecraft:written_book_content= {author: "芒果羊羊", title: "彩蛋獎勵", generation: 0, resolved: false, pages: ['["", [{"text": "這是本資料包唯一的", "color": "black"}, {"text": "彩蛋物品", "color": "#DE3AEA", "clickEvent": {"action": "run_command", "value": "/function mero_cft:main/panels/mero_say_hi/reward/recipe_hint_book"}}, {"text": "！\\n", "color": "black"}], [{"text": "可以讓發現這個祕密ㄉ你放置一個", "color": "black"}, {"text": "經驗值產生器\\n", "color": "gold"}], [{"text": "經驗值產生器", "color": "gold"}, {"text": "就是會無限產生經驗值的生怪磚，尼心動了咩？\\n", "color": "black"}], [{"text": "而且這個神器是限定ㄉ，", "color": "black"}, {"text": "「絕對不可能」", "color": "#EA2E2B", "clickEvent": {"action": "run_command", "value": "/function mero_cft:main/panels/mero_say_hi/reward/impossible_message"}}, {"text": "用合成的方式製造類似的東西出來( • ̀ω•́ )っ\\n\\n", "color": "black"}], [{"text": "　　　"}, {"text": "【確認放置】", "color": "#00FF65", "hoverEvent": {"action": "show_text", "contents": [{"text": "請確認您的站立位置為空氣方塊，周圍8格僅\\n", "color": "gold"}, [{"text": "接受 ", "color": "gold"}, [{"text": "可取代方塊", "color": "aqua"}, {"text": "（見維基資料「標籤.replaceable」）", "color": "light_purple"}, {"text": "、\\n", "color": "aqua"}], [{"text": "原版花朵、以及某些光源方塊", "color": "aqua"}, {"text": "（火把類、光源、燈籠類）", "color": "light_purple"}]], {"text": "。\\n", "color": "gold"}, [{"text": "否則將導致", "color": "gold"}, {"text": "放置失敗", "color": "#FF0000"}]]}, "clickEvent": {"action": "run_command", "value": "/execute as @s at @s run function mero_cft:main/panels/mero_say_hi/reward/setup"}}]]']}, minecraft:custom_data= {ItemID: "mero_cft:using_reward"}]

tag @s add MeroCraftingTable_GotEasterEggReward
