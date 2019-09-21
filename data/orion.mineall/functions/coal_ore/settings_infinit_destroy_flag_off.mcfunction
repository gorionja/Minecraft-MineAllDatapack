# ------------------------------------------------------------- #
# settings_infinit_destroy_flag_off.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] settings_infinit_destroy_flag_off","italic":true,"color":"red"}]

execute if score coal_ore MAD_InfDestFlg matches 1 run scoreboard players set coal_ore MAD_InfDestFlg 0
tellraw @s [{"text":"値を変更しました。","color":"dark_gray"}]
function orion.mineall:_settings/settings_infinit_destroy_flag