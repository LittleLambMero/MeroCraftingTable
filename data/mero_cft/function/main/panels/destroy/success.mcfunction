# == 建置成功時要執行的行為 == #
playsound minecraft:block.beacon.deactivate block @s ~ ~ ~ 1 1 0
tellraw @s [{"text": "羊羊合成檯", "color": "light_purple", "bold": true, "hoverEvent": {"action": "show_text", "value": [{"text": "標準的擴充合成檯\n"}, {"text": "可以合成所有自定義的物品"}]}}, {"text": " 解構完成！", "color": "green"}]
