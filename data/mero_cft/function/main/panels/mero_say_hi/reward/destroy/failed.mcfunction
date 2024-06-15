playsound block.bell.use block @s ~ ~ ~ 1 1 1
tellraw @s ["", {"text": "【系統錯誤】", "color": "red"}, {"text": "請確認您已經站在經驗產生器上，並再試一次。", "color": "gold"}]
