# ------------------------------------------------------------- #
# store_exp_orb_ramdom.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] store_exp_orb_ramdom","italic":true,"color":"red"}]

# 0 ~ 2 個
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Health:0.0f,CustomName:"{\"text\":\"store_exp_orb_ramdom\"}"}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Health:1.0f,CustomName:"{\"text\":\"store_exp_orb_ramdom\"}"}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Health:2.0f,CustomName:"{\"text\":\"store_exp_orb_ramdom\"}"}
execute store result score @s MAD_Random run data get entity @e[name=store_exp_orb_ramdom,limit=1,sort=random] Health

kill @e[name=store_exp_orb_ramdom]