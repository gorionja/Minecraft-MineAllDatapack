# ------------------------------------------------------------- #
# settings_limit_ore_flg_off.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] settings_limit_ore_flg_off","italic":true,"color":"red"}]

execute if score limit_ore_flg MAD_Setting matches 1 run scoreboard players set limit_ore_flg MAD_Setting 0
tellraw @s [{"text":"値を変更しました。","color":"dark_gray"}]
function orion.mineall:settings