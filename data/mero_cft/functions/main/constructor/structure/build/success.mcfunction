# == 建置成功時要執行的行為 == #
playsound minecraft:block.beacon.activate block @a[distance = ..8] ~ ~ ~ 1 1 0
tellraw @a[distance = ..8] [{"text": "【全域遊戲通知】", "color": "gold"}, {"text": "羊羊合成檯", "color": "light_purple", "bold": true, "hoverEvent": {"action": "show_text", "value": [{"text": "標準的擴充合成檯\n"}, {"text": "可以合成所有自定義的物品"}]}}, {"text": " 建置成功!", "color": "green"}]
