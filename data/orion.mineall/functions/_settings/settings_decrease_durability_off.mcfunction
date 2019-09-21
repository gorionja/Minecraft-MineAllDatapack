# ------------------------------------------------------------- #
# settings_decrease_durability_off.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] settings_decrease_durability_off","italic":true,"color":"red"}]

execute if score decrease_durability MAD_Setting matches 1 run scoreboard players set decrease_durability MAD_Setting 0
tellraw @s [{"text":"値を変更しました。","color":"dark_gray"}]
function orion.mineall:_settings/settings