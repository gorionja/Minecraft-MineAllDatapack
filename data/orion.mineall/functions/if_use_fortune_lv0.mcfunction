# ------------------------------------------------------------- #
# if_use_fortune_lv0.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] if_use_fortune_lv0","italic":true,"color":"red"}]

# (100/(1))%
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Health:1.0f,CustomName:"{\"text\":\"fortune_randomizer_lv0\"}"}
execute store result score @s MAD_Random run data get entity @e[name=fortune_randomizer_lv0,limit=1,sort=random] Health
# tellraw @s [{"text":"[debug] MAD_Random: "},{"score":{"name":"@s","objective":"MAD_Random"}}]
kill @e[name=fortune_randomizer_lv0]