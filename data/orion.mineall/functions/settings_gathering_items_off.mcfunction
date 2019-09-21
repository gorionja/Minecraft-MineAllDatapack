# ------------------------------------------------------------- #
# settings_gathering_items_off.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] settings_gathering_items_off","italic":true,"color":"red"}]

execute if score gathering_items MAD_Setting matches 1 run scoreboard players set gathering_items MAD_Setting 0
tellraw @s [{"text":"値を変更しました。","color":"dark_gray"}]
function orion.mineall:settings