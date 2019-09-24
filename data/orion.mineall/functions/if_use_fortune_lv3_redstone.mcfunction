# ------------------------------------------------------------- #
# if_use_fortune_lv2_redstone.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] if_use_fortune_lv2_redstone","italic":true,"color":"red"}]

# (100/(8))%
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Health:1.0f,CustomName:"{\"text\":\"fortune_randomizer_lv2_redstone\"}"}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Health:2.0f,CustomName:"{\"text\":\"fortune_randomizer_lv2_redstone\"}"}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Health:3.0f,CustomName:"{\"text\":\"fortune_randomizer_lv2_redstone\"}"}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Health:4.0f,CustomName:"{\"text\":\"fortune_randomizer_lv2_redstone\"}"}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Health:5.0f,CustomName:"{\"text\":\"fortune_randomizer_lv2_redstone\"}"}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Health:6.0f,CustomName:"{\"text\":\"fortune_randomizer_lv2_redstone\"}"}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Health:5.0f,CustomName:"{\"text\":\"fortune_randomizer_lv2_redstone\"}"}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Health:6.0f,CustomName:"{\"text\":\"fortune_randomizer_lv2_redstone\"}"}
execute store result score @s MAD_Random run data get entity @e[name=fortune_randomizer_lv2_redstone,limit=1,sort=random] Health
kill @e[name=fortune_randomizer_lv2_redstone]