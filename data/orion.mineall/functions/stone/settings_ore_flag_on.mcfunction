# ------------------------------------------------------------- #
# settings_ore_flag_on.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] settings_ore_flag_on","italic":true,"color":"red"}]

execute if score stone MAD_OreFlg matches 0 run scoreboard players set stone MAD_OreFlg 1
tellraw @s [{"text":"値を変更しました。","color":"dark_gray"}]
function orion.mineall:settings_ore_flag