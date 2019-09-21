# ------------------------------------------------------------- #
# init.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] init","italic":true,"color":"red"}]

### ロード時コメント
tellraw @a ["",{"text":"MineAll loaded. ","italic":true,"color":"green"},{"text":"[Click]","color":"blue","clickEvent":{"action":"run_command","value":"/function orion.mineall:settings"}},{"text":" Open Settings"}]

### スコアボード作成
scoreboard objectives add MAD_UsedWPAxe minecraft.used:minecraft.wooden_pickaxe
scoreboard objectives add MAD_UsedSPAxe minecraft.used:minecraft.stone_pickaxe
scoreboard objectives add MAD_UsedIPAxe minecraft.used:minecraft.iron_pickaxe
scoreboard objectives add MAD_UsedGPAxe minecraft.used:minecraft.golden_pickaxe
scoreboard objectives add MAD_UsedDPAxe minecraft.used:minecraft.diamond_pickaxe
scoreboard objectives add MAD_SneakTime minecraft.custom:minecraft.sneak_time
scoreboard objectives add MAD_Setting dummy
scoreboard objectives add MAD_Status dummy
scoreboard objectives add MAD_Durability dummy
scoreboard objectives add MAD_Random dummy
scoreboard objectives add MAD_Coordinate dummy
scoreboard objectives add MAD_InfDestFlg dummy
scoreboard objectives add MAD_OreFlg dummy

### ツール耐久度の減少フラグ（0:OFF 1:ON<デフォルト>）
### ONにすると破壊したブロックの数だけツール耐久度が減少するようになる。
scoreboard players set decrease_durability MAD_Setting 1

### 最大鉱石ブロックサイズの設定
scoreboard players set max_block_size MAD_Setting 50

### 鉱石限定フラグの設定（OFF:0,ON:1,デフォルトはOFF）
scoreboard players set limit_ore_flg MAD_Setting 0

### 無限破壊フラグの設定
scoreboard players set andesite MAD_InfDestFlg 0
scoreboard players set cobblestone MAD_InfDestFlg 0
scoreboard players set diorite MAD_InfDestFlg 0
scoreboard players set glowstone MAD_InfDestFlg 1
scoreboard players set granite MAD_InfDestFlg 0
scoreboard players set magma_block MAD_InfDestFlg 0
scoreboard players set netherrack MAD_InfDestFlg 0
scoreboard players set stone MAD_InfDestFlg 0
scoreboard players set coal_ore MAD_InfDestFlg 1
scoreboard players set diamond_ore MAD_InfDestFlg 1
scoreboard players set emerald_ore MAD_InfDestFlg 1
scoreboard players set gold_ore MAD_InfDestFlg 1
scoreboard players set iron_ore MAD_InfDestFlg 1
scoreboard players set lapis_ore MAD_InfDestFlg 1
scoreboard players set nether_quartz_ore MAD_InfDestFlg 1
scoreboard players set obsidian MAD_InfDestFlg 1
scoreboard players set redstone_ore MAD_InfDestFlg 1

### 鉱石フラグの設定
scoreboard players set andesite MAD_OreFlg 0
scoreboard players set cobblestone MAD_OreFlg 0
scoreboard players set diorite MAD_OreFlg 0
scoreboard players set glowstone MAD_OreFlg 1
scoreboard players set granite MAD_OreFlg 0
scoreboard players set magma_block MAD_OreFlg 0
scoreboard players set netherrack MAD_OreFlg 0
scoreboard players set stone MAD_OreFlg 0
scoreboard players set coal_ore MAD_OreFlg 1
scoreboard players set diamond_ore MAD_OreFlg 1
scoreboard players set emerald_ore MAD_OreFlg 1
scoreboard players set gold_ore MAD_OreFlg 1
scoreboard players set iron_ore MAD_OreFlg 1
scoreboard players set lapis_ore MAD_OreFlg 1
scoreboard players set nether_quartz_ore MAD_OreFlg 1
scoreboard players set obsidian MAD_OreFlg 1
scoreboard players set redstone_ore MAD_OreFlg 1