# ------------------------------------------------------------- #
# settings_max_block_size_500.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] settings_max_block_size_500","italic":true,"color":"red"}]

scoreboard players set max_block_size MAD_Setting 500
function orion.mineall:settings_max_block_size

gamerule sendCommandFeedback false