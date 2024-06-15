playsound block.bell.use block @s ~ ~ ~ 1 1 1
tellraw @s ["", {"text": "【系統錯誤】", "color": "red"}, {"text": "請檢查您的周圍是否有其他方塊阻擋，並再試一次。", "color": "gold"}]
