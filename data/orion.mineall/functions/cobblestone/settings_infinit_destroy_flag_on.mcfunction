# ------------------------------------------------------------- #
# settings_infinit_destroy_flag_on.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] settings_infinit_destroy_flag_on","italic":true,"color":"red"}]

execute if score cobblestone MAD_InfDestFlg matches 0 run scoreboard players set cobblestone MAD_InfDestFlg 1
tellraw @s [{"text":"値を変更しました。","color":"dark_gray"}]
function orion.mineall:_settings/settings_infinit_destroy_flag