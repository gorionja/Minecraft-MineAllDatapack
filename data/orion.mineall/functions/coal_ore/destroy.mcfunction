# ------------------------------------------------------------- #
# coal_ore/destroy.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] coal_ore/destroy","italic":true,"color":"red"}]

# エンチャント "耐久力"のための乱数取得用アマスタ召喚
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:1s,id:"minecraft:unbreaking"}]}}}] run function orion.mineall:if_use_unbreaking_lv1
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:2s,id:"minecraft:unbreaking"}]}}}] run function orion.mineall:if_use_unbreaking_lv2
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:3s,id:"minecraft:unbreaking"}]}}}] run function orion.mineall:if_use_unbreaking_lv3
execute if score decrease_durability MAD_Setting matches 1 if score @s MAD_Random matches 0 run scoreboard players add @s MAD_Durability 1

# 乱数初期化
scoreboard players set @s MAD_Random 0

# エンチャント "幸運"のための乱数取得用アマスタ召喚
function orion.mineall:if_use_fortune_lv0
execute if score @s MAD_Random matches 1 run scoreboard players set drop_count MAD_Fortune 1

execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:1s,id:"minecraft:fortune"}]}}}] run function orion.mineall:if_use_fortune_lv1
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:1s,id:"minecraft:fortune"}]}}}] if score @s MAD_Random matches 3 run scoreboard players set drop_count MAD_Fortune 2

execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:2s,id:"minecraft:fortune"}]}}}] run function orion.mineall:if_use_fortune_lv2
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:2s,id:"minecraft:fortune"}]}}}] if score @s MAD_Random matches 4 run scoreboard players set drop_count MAD_Fortune 3
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:2s,id:"minecraft:fortune"}]}}}] if score @s MAD_Random matches 3 run scoreboard players set drop_count MAD_Fortune 2

execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:3s,id:"minecraft:fortune"}]}}}] run function orion.mineall:if_use_fortune_lv3
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:3s,id:"minecraft:fortune"}]}}}] if score @s MAD_Random matches 5 run scoreboard players set drop_count MAD_Fortune 4
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:3s,id:"minecraft:fortune"}]}}}] if score @s MAD_Random matches 4 run scoreboard players set drop_count MAD_Fortune 3
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:3s,id:"minecraft:fortune"}]}}}] if score @s MAD_Random matches 3 run scoreboard players set drop_count MAD_Fortune 2

# 乱数初期化
scoreboard players set @s MAD_Random 0

scoreboard players add current_block_size MAD_Setting 1

# setblock ~ ~ ~ minecraft:air destroy
setblock ~ ~ ~ minecraft:air replace
execute if score drop_count MAD_Fortune matches 1 run summon minecraft:item ~ ~ ~ {Motion:[0.0d,0.2d,0.0d],Item:{id:"minecraft:coal",Count:1}}
execute if score drop_count MAD_Fortune matches 2 run summon minecraft:item ~ ~ ~ {Motion:[0.0d,0.2d,0.0d],Item:{id:"minecraft:coal",Count:2}}
execute if score drop_count MAD_Fortune matches 3 run summon minecraft:item ~ ~ ~ {Motion:[0.0d,0.2d,0.0d],Item:{id:"minecraft:coal",Count:3}}
execute if score drop_count MAD_Fortune matches 4 run summon minecraft:item ~ ~ ~ {Motion:[0.0d,0.2d,0.0d],Item:{id:"minecraft:coal",Count:4}}

# 経験値オーブを召喚
function orion.mineall:coal_ore/store_exp_orb_ramdom
execute if score @s MAD_Random matches 1 run function orion.mineall:summon_experience_orb_1
execute if score @s MAD_Random matches 2 run function orion.mineall:summon_experience_orb_2

# 自動アイテム収集
execute if score gathering_items MAD_Setting matches 1 positioned ~ ~ ~ if entity @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:coal"}},limit=1] run tag @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:coal"}}] add gathering
execute if score gathering_items MAD_Setting matches 1 run tp @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:coal"}},tag=gathering] @s
execute if score gathering_items MAD_Setting matches 1 positioned ~ ~ ~ if entity @e[type=minecraft:experience_orb,nbt={Age:0s},limit=1] run tag @e[type=minecraft:experience_orb,nbt={Age:0s}] add gathering
execute if score gathering_items MAD_Setting matches 1 run tp @e[type=minecraft:experience_orb,nbt={Age:0s},tag=gathering] @s
execute if score gathering_items MAD_Setting matches 1 run tag @a remove gathering

execute if score coal_ore MAD_InfDestFlg matches 1 run function orion.mineall:coal_ore/detect_next_block