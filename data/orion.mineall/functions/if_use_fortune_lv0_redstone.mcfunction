# ------------------------------------------------------------- #
# if_use_fortune_lv0_redstone.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] if_use_fortune_lv0_redstone","italic":true,"color":"red"}]

# (100/(4))%
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Health:1.0f,CustomName:"{\"text\":\"fortune_randomizer_lv0_redstone\"}"}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Health:2.0f,CustomName:"{\"text\":\"fortune_randomizer_lv0_redstone\"}"}
execute store result score @s MAD_Random run data get entity @e[name=fortune_randomizer_lv0_redstone,limit=1,sort=random] Health