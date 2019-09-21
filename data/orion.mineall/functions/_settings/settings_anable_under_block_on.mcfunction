# ------------------------------------------------------------- #
# settings_anable_under_block_on.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] settings_anable_under_block_on","italic":true,"color":"red"}]

execute if score anable_under_block MAD_Setting matches 0 run scoreboard players set anable_under_block MAD_Setting 1
tellraw @s [{"text":"値を変更しました。","color":"dark_gray"}]
function orion.mineall:_settings/settings