# ------------------------------------------------------------- #
# settings_initialize.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] settings_initialize","italic":true,"color":"red"}]

scoreboard players set first_time MAD_Setting 0
tellraw @s [{"text":"設定を初期化しました。","color":"dark_gray"}]
function orion.mineall:init
function orion.mineall:settings