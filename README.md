# 芒果羊羊自定義合成台
## 簡介
這個資料包提供了「自定義物品合成」的功能，同時提供接口讓其他資料包可以使用該資料包的合成功能。
## 安裝
### 創建世界時安裝
在創造世界的介面中選擇「更多」，點選該介面的第三個選項「資料包」並開啟資料夾，將該資料包拖曳進資料夾中，看到「選擇資料包」介面中出現「芒果羊羊自定義合成台 for ...」的選項，選擇該資料包即完成安裝。
### 在現有世界中安裝
請把該資料包（資料夾或壓縮包皆可）放進世界資料夾（原版路徑：%User%/%AppData%/Roaming/.minecraft/save/<你的世界>）中的「datapacks」資料夾中，即完成安裝。
## 怎麼使用
1. 玩家需要有三項物品，分別是「原版合成台」、「木棒」、「任何木材種類的告示牌」
2. 將這三樣物品分別丟在地上，即可建造自定義合成台
## 合成台的功能面板介紹
成功搭建自定義合成台之後，該結構應該具有一個投擲器與5個功能面板，分別為「合成」、「解構」、「靜音合成」、「秘密功能」、「一鍵合成」。
### 合成
將物品依照指定資料包的合成配方擺放，點擊該功能面板即可進行合成。<br>
如果玩家擺放的物品順序不存在於任何一個已啟用的資料包合成配方中，會導致合成失敗並顯示提示文字與音效。
### 解構
點擊該功能面板之後，自定義合成台會進行拆解並返回建構材料。如果解構時合成台內有物品也會一同返還。
### 靜音合成／解除靜音
點選之後玩家會啟用「靜音模式」，該模式下進行合成將不會返回提示文字與音效（合成失敗時亦然），僅會出現粒子效果，且功能面板會變更為「解除靜音」。<br>
點選「解除靜音」將會取消靜音模式，且功能面板會變更為「靜音合成」。
### 秘密功能
（´◔​∀◔`)
### 一鍵合成
點選該功能之後，合成台將會持續執行合成功能，直到搜尋不到指定合成配方、或合成台為空時停止。<br>
使用該功能的時候，靜音模式會自動啟用，並在結束執行時自動停用。
## 注意事項
1. 搭建合成台時至少需要3×3的空間，周圍有方塊時會搭建失敗。
2. 如果合成台不慎被物理破壞，系統會自動偵測並發出消息，因此不必擔心合成台意外損毀造成資料包故障的問題。
# 開發者專區
## 關於自定義合成配方
其他資料包也可以在此資料包註冊自己的合成配方函數來達成物品合成的功能，以下提供操作步驟（建議）：（以下使用「資料包A」做代稱）
1. 為了方便配方表管理，請在 A 的「function（**1.21以上**）／functions（**1.21以下**）」資料夾建立一個「recipes」資料夾
2. 在 recipes 中建立「recipes_manager.mcfunction」或任意名稱的函數作為管理所有配方表函數的總函數
3. 在本資料包中的「recipes/register.mcfunction」函數中向下新增指令，舉例如下：<br>
```mcfunction
# 該指令可以在檢測到配方之後結束執行，一來可以減少指令執行延遲，二來可以避免不同資料包之間的相同配方衝突問題
execute if score @s PlayerCraftingSuccessedStatus matches 1 run return 0
function example:recipes/recipes_manager
```
4. recipes_manager 函數需要呼叫資料包A的所有合成配方，這裡由開發者自行發揮

更詳細的例子可以直接參考本資料包中的函數結構，也許能幫助到您。
## 如何設定配方表
由於本資料包的「合成台」使用了原版的投擲器，因此配方表函數（此處稱為「recipe.mcfunction」）必須要能夠偵測投擲器中的物品內容。以本資料包的「經驗藥水」為例：<br>
【1.21以下】<br>
```mcfunction
execute if block ~ ~ ~ minecraft:dropper{Items: [{Slot: 1b, id: "minecraft:experience_bottle"}, {Slot: 3b, id: "minecraft:experience_bottle"}, {Slot: 4b, id: "minecraft:potion", tag: {Potion: "minecraft:thick"}}, {Slot: 5b, id: "minecraft:experience_bottle"}, {Slot: 6b, id: "minecraft:experience_bottle"}, {Slot: 7b, id: "minecraft:experience_bottle"}, {Slot: 8b, id: "minecraft:experience_bottle"}]} run function mero_cft:recipes/items/xp_potion/successed
```
【1.21以上】<br>
```mcfunction
execute if block ~ ~ ~ minecraft:dropper{Items: [{Slot: 1b, id: "minecraft:experience_bottle"}, {Slot: 3b, id: "minecraft:experience_bottle"}, {Slot: 4b, id: "minecraft:potion", components: {"minecraft:potion_contents": {potion: "minecraft:thick"}}}, {Slot: 5b, id: "minecraft:experience_bottle"}, {Slot: 6b, id: "minecraft:experience_bottle"}, {Slot: 7b, id: "minecraft:experience_bottle"}, {Slot: 8b, id: "minecraft:experience_bottle"}]} run function mero_cft:recipes/items/xp_potion/successed
```
而這是該配方表的模樣：<br>
![經驗藥水合成表](https://i.imgur.com/ngTufgQ.png)<br>
您可以在**Minecraft Wiki**中找到相關的教學內容。<p>
當合成台順利檢測到配方之後，您必須呼叫下一個函數，在本資料包中命名為「successed.mcfunction」。該函數的作用是「消耗合成台中的物品數量，並讓系統知道合成成功，再給予玩家物品」，以下是「經驗藥水」的 successed.mcfunction 內容：<br>
```mcfunction
function mero_cft:recipes/default_item_resume
scoreboard players set @s PlayerCraftingSuccessedStatus 1

function mero_cft:recipes/items/xp_potion/get
```
您會注意到函數第一行呼叫了「default_item_resume.mcfunction」，這個函數是預設函數，功能是使合成台內的所有物品減少1個。當然，您也可以在自己的資料包中自己編寫一個自定義的消耗函數並改由呼叫自己的消耗函數而不使用預設，但無論如何消耗函數必須在此呼叫而不可省略（除非您允許無限合成，但可能會發生一些小問題）。<br>
另外函數第二行也是不可省略的指令，它可以讓系統知道目前的合成工作已經完成了，不需要再繼續搜尋其他資料包的合成配方。
# 更新版本歷史
<detail>
    <summary>v2.0</summary>
    - 將資料包的遊戲運行版本從 1.20.4 提升至 1.21
    - 「經驗藥水」的堆疊數量從1個提升為16個
</detail>
<detail>
    <summary>v1.0</summary>
    - 更新了 1 個挑戰成就
    - 包含 3 個資料包物品
    - 新增「一鍵合成」功能
    - 添加例外事件處理 >>> 當合成檯、經驗產生器被意外破壞時啟動相關處理程序
    - 針對更新至 1.20.4 的資料包「進度」改動內容進行修復
</detail>
