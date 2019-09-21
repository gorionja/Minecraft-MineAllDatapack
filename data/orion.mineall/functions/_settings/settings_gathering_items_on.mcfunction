# ------------------------------------------------------------- #
# settings_gathering_items_on.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] settings_gathering_items_on","italic":true,"color":"red"}]

execute if score gathering_items MAD_Setting matches 0 run scoreboard players set gathering_items MAD_Setting 1
tellraw @s [{"text":"値を変更しました。","color":"dark_gray"}]
function orion.mineall:_settings/settings