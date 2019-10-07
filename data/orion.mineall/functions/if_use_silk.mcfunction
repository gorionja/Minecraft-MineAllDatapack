# ------------------------------------------------------------- #
# if_use_silk.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] if_use_silk","italic":true,"color":"red"}]

# 耐久度を取得しスコアボードに代入
execute store result score @s MAD_Durability run data get entity @s SelectedItem.tag.Damage

# シルクタッチ付きのツールを使用した場合
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:1s,id:"minecraft:silk_touch"}]}}}] run function orion.mineall:run_silk

# シルクタッチ付きのツールを使用していない場合
execute unless entity @s[nbt={SelectedItem:{tag:{Enchantments:[{lvl:1s,id:"minecraft:silk_touch"}]}}}] run function orion.mineall:run

# 現在のスコアボードの値を耐久度に代入
execute store result entity @s SelectedItem.tag.Damage short 1 run scoreboard players get @s MAD_Durability

# アマスタ削除
kill @e[name=Unbreaking_randomizer_lv1]
kill @e[name=Unbreaking_randomizer_lv2]
kill @e[name=Unbreaking_randomizer_lv3]
kill @e[name=fortune_randomizer_lv1]
kill @e[name=fortune_randomizer_lv2]
kill @e[name=fortune_randomizer_lv3]
kill @e[name=fortune_randomizer_lv0_glowstone]
kill @e[name=fortune_randomizer_lv1_glowstone]
kill @e[name=fortune_randomizer_lv2_glowstone]
kill @e[name=fortune_randomizer_lv3_glowstone]
kill @e[name=fortune_randomizer_lv0_redstone]
kill @e[name=fortune_randomizer_lv1_redstone]
kill @e[name=fortune_randomizer_lv2_redstone]
kill @e[name=fortune_randomizer_lv3_redstone]
