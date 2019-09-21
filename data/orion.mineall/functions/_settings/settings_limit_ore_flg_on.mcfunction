# ------------------------------------------------------------- #
# settings_limit_ore_flg_on.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] settings_limit_ore_flg_on","italic":true,"color":"red"}]

execute if score limit_ore_flg MAD_Setting matches 0 run scoreboard players set limit_ore_flg MAD_Setting 1
tellraw @s [{"text":"値を変更しました。","color":"dark_gray"}]
function orion.mineall:_settings/settings