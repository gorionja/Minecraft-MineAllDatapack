# ------------------------------------------------------------- #
# glowstone/destroy.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] glowstone/destroy","italic":true,"color":"red"}]

# エンチャント "耐久力"のための乱数取得用アマスタ召喚
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:1,id:"minecraft:unbreaking"}]}}}] run function orion.mineall:if_use_unbreaking_lv1
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:2,id:"minecraft:unbreaking"}]}}}] run function orion.mineall:if_use_unbreaking_lv2
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:3,id:"minecraft:unbreaking"}]}}}] run function orion.mineall:if_use_unbreaking_lv3
execute if score decrease_durability MAD_Setting matches 1 if score @s MAD_Random matches 0 run scoreboard players add @s MAD_Durability 1

# 乱数初期化
scoreboard players set @s MAD_Random 0

# エンチャント "幸運"のための乱数取得用アマスタ召喚
function orion.mineall:if_use_fortune_lv0_glowstone
execute if score @s MAD_Random <= glowstone_lv0_4 MAD_Fortune run scoreboard players set drop_count MAD_Fortune 4
execute if score @s MAD_Random <= glowstone_lv0_3 MAD_Fortune run scoreboard players set drop_count MAD_Fortune 3
execute if score @s MAD_Random <= glowstone_lv0_2 MAD_Fortune run scoreboard players set drop_count MAD_Fortune 2

execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:1,id:"minecraft:fortune"}]}}}] run function orion.mineall:if_use_fortune_lv1_glowstone
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:1,id:"minecraft:fortune"}]}}}] if score @s MAD_Random <= glowstone_lv1_4 MAD_Fortune run scoreboard players set drop_count MAD_Fortune 4
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:1,id:"minecraft:fortune"}]}}}] if score @s MAD_Random <= glowstone_lv1_3 MAD_Fortune run scoreboard players set drop_count MAD_Fortune 3
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:1,id:"minecraft:fortune"}]}}}] if score @s MAD_Random <= glowstone_lv1_2 MAD_Fortune run scoreboard players set drop_count MAD_Fortune 2

execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:2,id:"minecraft:fortune"}]}}}] run function orion.mineall:if_use_fortune_lv2_glowstone
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:2,id:"minecraft:fortune"}]}}}] if score @s MAD_Random <= glowstone_lv2_4 MAD_Fortune run scoreboard players set drop_count MAD_Fortune 4
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:2,id:"minecraft:fortune"}]}}}] if score @s MAD_Random <= glowstone_lv2_3 MAD_Fortune run scoreboard players set drop_count MAD_Fortune 3
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:2,id:"minecraft:fortune"}]}}}] if score @s MAD_Random <= glowstone_lv2_2 MAD_Fortune run scoreboard players set drop_count MAD_Fortune 2

execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:3,id:"minecraft:fortune"}]}}}] run function orion.mineall:if_use_fortune_lv3_glowstone
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:3,id:"minecraft:fortune"}]}}}] if score @s MAD_Random <= glowstone_lv3_4 MAD_Fortune run scoreboard players set drop_count MAD_Fortune 4
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:3,id:"minecraft:fortune"}]}}}] if score @s MAD_Random <= glowstone_lv3_3 MAD_Fortune run scoreboard players set drop_count MAD_Fortune 3
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:3,id:"minecraft:fortune"}]}}}] if score @s MAD_Random <= glowstone_lv3_2 MAD_Fortune run scoreboard players set drop_count MAD_Fortune 2

# 乱数初期化
scoreboard players set @s MAD_Random 0

scoreboard players add current_block_size MAD_Setting 1

# setblock ~ ~ ~ minecraft:air destroy
setblock ~ ~ ~ minecraft:air replace
execute if score drop_count MAD_Fortune matches 2 run summon minecraft:item ~ ~ ~ {Motion:[0.0d,0.2d,0.0d],Item:{id:"minecraft:glowstone_dust",Count:2}}
execute if score drop_count MAD_Fortune matches 3 run summon minecraft:item ~ ~ ~ {Motion:[0.0d,0.2d,0.0d],Item:{id:"minecraft:glowstone_dust",Count:3}}
execute if score drop_count MAD_Fortune matches 4 run summon minecraft:item ~ ~ ~ {Motion:[0.0d,0.2d,0.0d],Item:{id:"minecraft:glowstone_dust",Count:4}}

# 自動アイテム収集
execute if score gathering_items MAD_Setting matches 1 positioned ~ ~ ~ if entity @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:glowstone_dust"}},limit=1] run tag @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:glowstone_dust"}}] add gathering
execute if score gathering_items MAD_Setting matches 1 run tp @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:glowstone_dust"}},tag=gathering] @s
execute if score gathering_items MAD_Setting matches 1 run tag @a remove gathering

execute if score glowstone MAD_InfDestFlg matches 1 run function orion.mineall:glowstone/detect_next_block