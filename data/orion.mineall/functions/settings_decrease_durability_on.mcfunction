# ------------------------------------------------------------- #
# settings_decrease_durability_on.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] settings_decrease_durability_on","italic":true,"color":"red"}]

execute if score decrease_durability MAD_Setting matches 0 run scoreboard players set decrease_durability MAD_Setting 1
tellraw @s [{"text":"値を変更しました。","color":"dark_gray"}]
function orion.mineall:settings