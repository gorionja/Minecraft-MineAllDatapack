# ------------------------------------------------------------- #
# init.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] init","italic":true,"color":"red"}]

### ロード時コメント
tellraw @a ["",{"text":"MineAll loaded. ","italic":true,"color":"green"},{"text":"[Click]","color":"blue","clickEvent":{"action":"run_command","value":"/function orion.mineall:_settings/settings"}},{"text":" Open Settings"}]

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
scoreboard objectives add MAD_Fortune dummy

### ツール耐久度の減少フラグ（0:OFF 1:ON<デフォルト>）
### ONにすると破壊したブロックの数だけツール耐久度が減少するようになる。
execute if score first_time MAD_Setting matches 0 run scoreboard players set decrease_durability MAD_Setting 1

### 破壊ブロック上限数の設定
execute if score first_time MAD_Setting matches 0 run scoreboard players set max_block_size MAD_Setting 100

### 下方ブロック破壊の設定（0:OFF<デフォルト> 1:ON）
execute if score first_time MAD_Setting matches 0 run scoreboard players set enable_under_block MAD_Setting 0

### 鉱石限定フラグの設定（OFF:0,ON:1,デフォルトはOFF）
execute if score first_time MAD_Setting matches 0 run scoreboard players set limit_ore_flg MAD_Setting 0

### 自動アイテム収集フラグの設定（OFF:0,ON:1,デフォルトはOFF）
execute if score first_time MAD_Setting matches 0 run scoreboard players set gathering_items MAD_Setting 0

### 鉱石フラグの設定
execute if score first_time MAD_Setting matches 0 run scoreboard players set andesite MAD_OreFlg 0
execute if score first_time MAD_Setting matches 0 run scoreboard players set cobblestone MAD_OreFlg 0
execute if score first_time MAD_Setting matches 0 run scoreboard players set diorite MAD_OreFlg 0
execute if score first_time MAD_Setting matches 0 run scoreboard players set glowstone MAD_OreFlg 1
execute if score first_time MAD_Setting matches 0 run scoreboard players set granite MAD_OreFlg 0
execute if score first_time MAD_Setting matches 0 run scoreboard players set magma_block MAD_OreFlg 0
execute if score first_time MAD_Setting matches 0 run scoreboard players set netherrack MAD_OreFlg 0
execute if score first_time MAD_Setting matches 0 run scoreboard players set stone MAD_OreFlg 0
execute if score first_time MAD_Setting matches 0 run scoreboard players set coal_ore MAD_OreFlg 1
execute if score first_time MAD_Setting matches 0 run scoreboard players set diamond_ore MAD_OreFlg 1
execute if score first_time MAD_Setting matches 0 run scoreboard players set emerald_ore MAD_OreFlg 1
execute if score first_time MAD_Setting matches 0 run scoreboard players set gold_ore MAD_OreFlg 1
execute if score first_time MAD_Setting matches 0 run scoreboard players set iron_ore MAD_OreFlg 1
execute if score first_time MAD_Setting matches 0 run scoreboard players set lapis_ore MAD_OreFlg 1
execute if score first_time MAD_Setting matches 0 run scoreboard players set nether_quartz_ore MAD_OreFlg 1
execute if score first_time MAD_Setting matches 0 run scoreboard players set obsidian MAD_OreFlg 1
execute if score first_time MAD_Setting matches 0 run scoreboard players set redstone_ore MAD_OreFlg 1

### 無限破壊フラグの設定
execute if score first_time MAD_Setting matches 0 run scoreboard players set andesite MAD_InfDestFlg 0
execute if score first_time MAD_Setting matches 0 run scoreboard players set cobblestone MAD_InfDestFlg 0
execute if score first_time MAD_Setting matches 0 run scoreboard players set diorite MAD_InfDestFlg 0
execute if score first_time MAD_Setting matches 0 run scoreboard players set glowstone MAD_InfDestFlg 1
execute if score first_time MAD_Setting matches 0 run scoreboard players set granite MAD_InfDestFlg 0
execute if score first_time MAD_Setting matches 0 run scoreboard players set magma_block MAD_InfDestFlg 0
execute if score first_time MAD_Setting matches 0 run scoreboard players set netherrack MAD_InfDestFlg 0
execute if score first_time MAD_Setting matches 0 run scoreboard players set stone MAD_InfDestFlg 0
execute if score first_time MAD_Setting matches 0 run scoreboard players set coal_ore MAD_InfDestFlg 1
execute if score first_time MAD_Setting matches 0 run scoreboard players set diamond_ore MAD_InfDestFlg 1
execute if score first_time MAD_Setting matches 0 run scoreboard players set emerald_ore MAD_InfDestFlg 1
execute if score first_time MAD_Setting matches 0 run scoreboard players set gold_ore MAD_InfDestFlg 1
execute if score first_time MAD_Setting matches 0 run scoreboard players set iron_ore MAD_InfDestFlg 1
execute if score first_time MAD_Setting matches 0 run scoreboard players set lapis_ore MAD_InfDestFlg 1
execute if score first_time MAD_Setting matches 0 run scoreboard players set nether_quartz_ore MAD_InfDestFlg 1
execute if score first_time MAD_Setting matches 0 run scoreboard players set obsidian MAD_InfDestFlg 1
execute if score first_time MAD_Setting matches 0 run scoreboard players set redstone_ore MAD_InfDestFlg 1

### 初回読み込みのフラグ
execute if score first_time MAD_Setting matches 0 run scoreboard players set first_time MAD_Setting 1

### インベントリ情報
# scoreboard objectives add MAD_Inventory dummy
# scoreboard objectives add MAD_InvtryArry dummy
# scoreboard players set null MAD_InvtryArry 0
# scoreboard players set exist_slot MAD_Setting 1

### エンチャント "幸運"のドロップ数設定
scoreboard players set glowstone_lv0_2 MAD_Fortune 1
scoreboard players set glowstone_lv0_3 MAD_Fortune 2
scoreboard players set glowstone_lv0_4 MAD_Fortune 3
scoreboard players set glowstone_lv1_2 MAD_Fortune 1
scoreboard players set glowstone_lv1_3 MAD_Fortune 3
scoreboard players set glowstone_lv1_4 MAD_Fortune 6
scoreboard players set glowstone_lv2_2 MAD_Fortune 1
scoreboard players set glowstone_lv2_3 MAD_Fortune 3
scoreboard players set glowstone_lv2_4 MAD_Fortune 9
scoreboard players set glowstone_lv3_2 MAD_Fortune 1
scoreboard players set glowstone_lv3_3 MAD_Fortune 3
scoreboard players set glowstone_lv3_4 MAD_Fortune 12
scoreboard players set redstone_lv0_4 MAD_Fortune 1
scoreboard players set redstone_lv0_5 MAD_Fortune 2
scoreboard players set redstone_lv1_4 MAD_Fortune 1
scoreboard players set redstone_lv1_5 MAD_Fortune 3
scoreboard players set redstone_lv1_6 MAD_Fortune 4
scoreboard players set redstone_lv2_4 MAD_Fortune 1
scoreboard players set redstone_lv2_5 MAD_Fortune 3
scoreboard players set redstone_lv2_6 MAD_Fortune 5
scoreboard players set redstone_lv2_7 MAD_Fortune 6
scoreboard players set redstone_lv3_4 MAD_Fortune 1
scoreboard players set redstone_lv3_5 MAD_Fortune 3
scoreboard players set redstone_lv3_6 MAD_Fortune 5
scoreboard players set redstone_lv3_7 MAD_Fortune 7
scoreboard players set redstone_lv3_8 MAD_Fortune 8
scoreboard players set ore_lv0_1 MAD_Fortune 1
scoreboard players set ore_lv1_2 MAD_Fortune 3
scoreboard players set ore_lv2_2 MAD_Fortune 3
scoreboard players set ore_lv2_3 MAD_Fortune 4
scoreboard players set ore_lv3_2 MAD_Fortune 3
scoreboard players set ore_lv3_3 MAD_Fortune 4
scoreboard players set ore_lv3_4 MAD_Fortune 5
scoreboard players set drop_count MAD_Fortune 1

gamerule sendCommandFeedback true