# ------------------------------------------------------------- #
# settings_ore_flag_off.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] settings_ore_flag_off","italic":true,"color":"red"}]

execute if score nether_quartz_ore MAD_OreFlg matches 1 run scoreboard players set nether_quartz_ore MAD_OreFlg 0
tellraw @s [{"text":"値を変更しました。","color":"dark_gray"}]
function orion.mineall:_settings/settings_ore_flag