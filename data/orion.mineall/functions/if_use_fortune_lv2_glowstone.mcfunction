# ------------------------------------------------------------- #
# if_use_fortune_lv2_glowstone.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] if_use_fortune_lv2_glowstone","italic":true,"color":"red"}]

# (100/(6))%
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Health:1.0f,CustomName:"{\"text\":\"fortune_randomizer_lv2_glowstone\"}"}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Health:2.0f,CustomName:"{\"text\":\"fortune_randomizer_lv2_glowstone\"}"}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Health:3.0f,CustomName:"{\"text\":\"fortune_randomizer_lv2_glowstone\"}"}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Health:4.0f,CustomName:"{\"text\":\"fortune_randomizer_lv2_glowstone\"}"}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Health:5.0f,CustomName:"{\"text\":\"fortune_randomizer_lv2_glowstone\"}"}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Health:6.0f,CustomName:"{\"text\":\"fortune_randomizer_lv2_glowstone\"}"}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Health:7.0f,CustomName:"{\"text\":\"fortune_randomizer_lv2_glowstone\"}"}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Health:8.0f,CustomName:"{\"text\":\"fortune_randomizer_lv2_glowstone\"}"}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Health:9.0f,CustomName:"{\"text\":\"fortune_randomizer_lv2_glowstone\"}"}
execute store result score @s MAD_Random run data get entity @e[name=fortune_randomizer_lv2_glowstone,limit=1,sort=random] Health
# tellraw @s [{"text":"[debug] MAD_Random: "},{"score":{"name":"@s","objective":"MAD_Random"}}]
kill @e[name=fortune_randomizer_lv2_glowstone]