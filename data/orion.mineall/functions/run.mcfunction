# ------------------------------------------------------------- #
# run.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] run","italic":true,"color":"red"}]

### 鉱石測定サイズをリセット
scoreboard players set current_block_size MAD_Setting 0

### ツルハシを使用してブロックを破壊したことの検知
execute if score andesite MAD_OreFlg >= limit_ore_flg MAD_Setting if score @s MAD_SneakTime matches 0 at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:andesite"}}] run function orion.mineall:andesite/detect_next_block
execute if score cobblestone MAD_OreFlg >= limit_ore_flg MAD_Setting if score @s MAD_SneakTime matches 0 at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:cobblestone"}}] run function orion.mineall:cobblestone/detect_next_block
execute if score diorite MAD_OreFlg >= limit_ore_flg MAD_Setting if score @s MAD_SneakTime matches 0 at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:diorite"}}] run function orion.mineall:diorite/detect_next_block
execute if score glowstone MAD_OreFlg >= limit_ore_flg MAD_Setting if score @s MAD_SneakTime matches 0 at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:glowstone_dust"}}] run function orion.mineall:glowstone/detect_next_block
execute if score granite MAD_OreFlg >= limit_ore_flg MAD_Setting if score @s MAD_SneakTime matches 0 at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:granite"}}] run function orion.mineall:granite/detect_next_block
execute if score magma_block MAD_OreFlg >= limit_ore_flg MAD_Setting if score @s MAD_SneakTime matches 0 at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:magma_block"}}] run function orion.mineall:magma_block/detect_next_block
execute if score netherrack MAD_OreFlg >= limit_ore_flg MAD_Setting if score @s MAD_SneakTime matches 0 at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:netherrack"}}] run function orion.mineall:netherrack/detect_next_block
execute if score stone MAD_OreFlg >= limit_ore_flg MAD_Setting if score @s MAD_SneakTime matches 0 at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:cobblestone"}}] run function orion.mineall:stone/detect_next_block
execute if score coal_ore MAD_OreFlg >= limit_ore_flg MAD_Setting if score @s MAD_SneakTime matches 0 at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:coal"}}] run function orion.mineall:coal_ore/detect_next_block
execute if score diamond_ore MAD_OreFlg >= limit_ore_flg MAD_Setting if score @s MAD_SneakTime matches 0 at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:diamond"}}] run function orion.mineall:diamond_ore/detect_next_block
execute if score emerald_ore MAD_OreFlg >= limit_ore_flg MAD_Setting if score @s MAD_SneakTime matches 0 at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:emerald"}}] run function orion.mineall:emerald_ore/detect_next_block
execute if score gold_ore MAD_OreFlg >= limit_ore_flg MAD_Setting if score @s MAD_SneakTime matches 0 at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:gold_ore"}}] run function orion.mineall:gold_ore/detect_next_block
execute if score iron_ore MAD_OreFlg >= limit_ore_flg MAD_Setting if score @s MAD_SneakTime matches 0 at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:iron_ore"}}] run function orion.mineall:iron_ore/detect_next_block
execute if score lapis_ore MAD_OreFlg >= limit_ore_flg MAD_Setting if score @s MAD_SneakTime matches 0 at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:lapis_lazuli"}}] run function orion.mineall:lapis_ore/detect_next_block
execute if score nether_quartz_ore MAD_OreFlg >= limit_ore_flg MAD_Setting if score @s MAD_SneakTime matches 0 at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:quartz"}}] run function orion.mineall:nether_quartz_ore/detect_next_block
execute if score obsidian MAD_OreFlg >= limit_ore_flg MAD_Setting if score @s MAD_SneakTime matches 0 at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:obsidian"}}] run function orion.mineall:obsidian/detect_next_block
execute if score redstone_ore MAD_OreFlg >= limit_ore_flg MAD_Setting if score @s MAD_SneakTime matches 0 at @e[distance=..6,type=minecraft:item,limit=1,nbt={Age:0s,Item:{id:"minecraft:redstone"}}] run function orion.mineall:redstone_ore/detect_next_block

### ツルハシ使用回数の初期化
scoreboard players set @s MAD_UsedWPAxe 0
scoreboard players set @s MAD_UsedSPAxe 0
scoreboard players set @s MAD_UsedIPAxe 0
scoreboard players set @s MAD_UsedGPAxe 0
scoreboard players set @s MAD_UsedDPAxe 0