# ------------------------------------------------------------- #
# settings_max_block_size_50.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] settings_max_block_size_50","italic":true,"color":"red"}]

scoreboard players set max_block_size MAD_Setting 50
function orion.mineall:_settings/settings_max_block_size

gamerule sendCommandFeedback false