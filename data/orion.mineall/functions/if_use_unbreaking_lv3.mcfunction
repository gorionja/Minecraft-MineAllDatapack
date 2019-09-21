# ------------------------------------------------------------- #
# if_use_unbreaking_lv3.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] if_use_unbreaking_lv3","italic":true,"color":"red"}]

# (100/(4))%
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Small:1b,CustomName:"{\"text\":\"Unbreaking_randomizer_lv3\"}"}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Small:1b,CustomName:"{\"text\":\"Unbreaking_randomizer_lv3\"}"}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Small:1b,CustomName:"{\"text\":\"Unbreaking_randomizer_lv3\"}"}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Small:0b,CustomName:"{\"text\":\"Unbreaking_randomizer_lv3\"}"}
execute store result score @s MAD_Random run data get entity @e[name=Unbreaking_randomizer_lv3,limit=1,sort=random] Small