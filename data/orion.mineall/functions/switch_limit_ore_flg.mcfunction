# ------------------------------------------------------------- #
# switch_limit_ore_flg.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] switch_limit_ore_flg","italic":true,"color":"red"}]

# 切り替え前のlimit_ore_flgの保存
scoreboard players set _ MAD_Setting 0
scoreboard players operation _ MAD_Setting = limit_ore_flg MAD_Setting

execute if score limit_ore_flg MAD_Setting matches 0 run scoreboard players set limit_ore_flg MAD_Setting 1
execute if score _ MAD_Setting matches 1 run scoreboard players set limit_ore_flg MAD_Setting 0

# limit_ore_flg表示
tellraw @p [{"text":"current limit_ore_flg : ","color":"yellow"},{"score":{"name":"limit_ore_flg","objective":"MAD_Setting"}}]
