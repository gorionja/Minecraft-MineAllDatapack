# ------------------------------------------------------------- #
# settings_max_block_size_300.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] settings_max_block_size_300","italic":true,"color":"red"}]

scoreboard players set max_block_size MAD_Setting 300
function orion.mineall:settings_max_block_size

gamerule sendCommandFeedback false