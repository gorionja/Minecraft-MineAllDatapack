# ------------------------------------------------------------- #
# obsidian/destroy.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] obsidian/destroy","italic":true,"color":"red"}]

# エンチャント "耐久力"のための乱数取得用アマスタ召喚
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:1,id:"minecraft:unbreaking"}]}}}] run function orion.mineall:if_use_unbreaking_lv1
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:2,id:"minecraft:unbreaking"}]}}}] run function orion.mineall:if_use_unbreaking_lv2
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:3,id:"minecraft:unbreaking"}]}}}] run function orion.mineall:if_use_unbreaking_lv3
execute if score decrease_durability MAD_Setting matches 1 if score @s MAD_Random matches 0 run scoreboard players add @s MAD_Durability 1

# 乱数初期化
scoreboard players set @s MAD_Random 0

scoreboard players add current_block_size MAD_Setting 1

setblock ~ ~ ~ minecraft:air destroy

# 自動アイテム収集
execute if score gathering_items MAD_Setting matches 1 positioned ~ ~ ~ if entity @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:obsidian"}},limit=1] run tag @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:obsidian"}}] add gathering
execute if score gathering_items MAD_Setting matches 1 run tp @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:obsidian"}},tag=gathering] @s
execute if score gathering_items MAD_Setting matches 1 run tag @a remove gathering

execute if score obsidian MAD_InfDestFlg matches 1 run function orion.mineall:obsidian/detect_next_block