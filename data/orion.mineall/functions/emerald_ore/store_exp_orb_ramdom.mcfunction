# ------------------------------------------------------------- #
# store_exp_orb_ramdom.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] store_exp_orb_ramdom","italic":true,"color":"red"}]

# 3 ~ 7 個
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Health:3.0f,CustomName:"{\"text\":\"store_exp_orb_ramdom\"}"}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Health:4.0f,CustomName:"{\"text\":\"store_exp_orb_ramdom\"}"}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Health:5.0f,CustomName:"{\"text\":\"store_exp_orb_ramdom\"}"}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Health:6.0f,CustomName:"{\"text\":\"store_exp_orb_ramdom\"}"}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Health:7.0f,CustomName:"{\"text\":\"store_exp_orb_ramdom\"}"}
execute store result score @s MAD_Random run data get entity @e[name=store_exp_orb_ramdom,limit=1,sort=random] Health

kill @e[name=store_exp_orb_ramdom]