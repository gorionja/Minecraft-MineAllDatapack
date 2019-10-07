# ------------------------------------------------------------- #
# redstone_ore/destroy.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] redstone_ore/destroy","italic":true,"color":"red"}]

# エンチャント "耐久力"のための乱数取得用アマスタ召喚
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:1s,id:"minecraft:unbreaking"}]}}}] run function orion.mineall:if_use_unbreaking_lv1
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:2s,id:"minecraft:unbreaking"}]}}}] run function orion.mineall:if_use_unbreaking_lv2
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:3s,id:"minecraft:unbreaking"}]}}}] run function orion.mineall:if_use_unbreaking_lv3
execute if score decrease_durability MAD_Setting matches 1 if score @s MAD_Random matches 0 run scoreboard players add @s MAD_Durability 1

# 乱数初期化
scoreboard players set @s MAD_Random 0

# エンチャント "幸運"のための乱数取得用アマスタ召喚
function orion.mineall:if_use_fortune_lv0_redstone
execute if score @s MAD_Random <= redstone_lv0_5 MAD_Fortune run scoreboard players set drop_count MAD_Fortune 5
execute if score @s MAD_Random <= redstone_lv0_4 MAD_Fortune run scoreboard players set drop_count MAD_Fortune 4

execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:1s,id:"minecraft:fortune"}]}}}] run function orion.mineall:if_use_fortune_lv1_redstone
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:1s,id:"minecraft:fortune"}]}}}] if score @s MAD_Random <= redstone_lv1_6 MAD_Fortune run scoreboard players set drop_count MAD_Fortune 6
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:1s,id:"minecraft:fortune"}]}}}] if score @s MAD_Random <= redstone_lv1_5 MAD_Fortune run scoreboard players set drop_count MAD_Fortune 5
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:1s,id:"minecraft:fortune"}]}}}] if score @s MAD_Random <= redstone_lv1_4 MAD_Fortune run scoreboard players set drop_count MAD_Fortune 4

execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:2s,id:"minecraft:fortune"}]}}}] run function orion.mineall:if_use_fortune_lv2_redstone
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:2s,id:"minecraft:fortune"}]}}}] if score @s MAD_Random <= redstone_lv2_7 MAD_Fortune run scoreboard players set drop_count MAD_Fortune 7
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:2s,id:"minecraft:fortune"}]}}}] if score @s MAD_Random <= redstone_lv2_6 MAD_Fortune run scoreboard players set drop_count MAD_Fortune 6
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:2s,id:"minecraft:fortune"}]}}}] if score @s MAD_Random <= redstone_lv2_5 MAD_Fortune run scoreboard players set drop_count MAD_Fortune 5
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:1s,id:"minecraft:fortune"}]}}}] if score @s MAD_Random <= redstone_lv2_4 MAD_Fortune run scoreboard players set drop_count MAD_Fortune 4

execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:3s,id:"minecraft:fortune"}]}}}] run function orion.mineall:if_use_fortune_lv3_redstone
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:3s,id:"minecraft:fortune"}]}}}] if score @s MAD_Random <= redstone_lv3_8 MAD_Fortune run scoreboard players set drop_count MAD_Fortune 8
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:3s,id:"minecraft:fortune"}]}}}] if score @s MAD_Random <= redstone_lv3_7 MAD_Fortune run scoreboard players set drop_count MAD_Fortune 7
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:3s,id:"minecraft:fortune"}]}}}] if score @s MAD_Random <= redstone_lv3_6 MAD_Fortune run scoreboard players set drop_count MAD_Fortune 6
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:3s,id:"minecraft:fortune"}]}}}] if score @s MAD_Random <= redstone_lv3_5 MAD_Fortune run scoreboard players set drop_count MAD_Fortune 5
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:3s,id:"minecraft:fortune"}]}}}] if score @s MAD_Random <= redstone_lv3_4 MAD_Fortune run scoreboard players set drop_count MAD_Fortune 4

# 乱数初期化
scoreboard players set @s MAD_Random 0

scoreboard players add current_block_size MAD_Setting 1

# setblock ~ ~ ~ minecraft:air destroy
setblock ~ ~ ~ minecraft:air replace
execute if score drop_count MAD_Fortune matches 4 run summon minecraft:item ~ ~ ~ {Motion:[0.0d,0.2d,0.0d],Item:{id:"minecraft:redstone",Count:4}}
execute if score drop_count MAD_Fortune matches 5 run summon minecraft:item ~ ~ ~ {Motion:[0.0d,0.2d,0.0d],Item:{id:"minecraft:redstone",Count:5}}
execute if score drop_count MAD_Fortune matches 6 run summon minecraft:item ~ ~ ~ {Motion:[0.0d,0.2d,0.0d],Item:{id:"minecraft:redstone",Count:6}}
execute if score drop_count MAD_Fortune matches 7 run summon minecraft:item ~ ~ ~ {Motion:[0.0d,0.2d,0.0d],Item:{id:"minecraft:redstone",Count:7}}
execute if score drop_count MAD_Fortune matches 8 run summon minecraft:item ~ ~ ~ {Motion:[0.0d,0.2d,0.0d],Item:{id:"minecraft:redstone",Count:8}}

# 自動アイテム収集
execute if score gathering_items MAD_Setting matches 1 positioned ~ ~ ~ if entity @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:redstone"}},limit=1] run tag @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:redstone"}}] add gathering
execute if score gathering_items MAD_Setting matches 1 run tp @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:redstone"}},tag=gathering] @s
execute if score gathering_items MAD_Setting matches 1 run tag @a remove gathering

execute if score redstone_ore MAD_InfDestFlg matches 1 run function orion.mineall:redstone_ore/detect_next_block