# ------------------------------------------------------------- #
# redstone_ore/destroy.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] redstone_ore/destroy","italic":true,"color":"red"}]

scoreboard players add current_block_size MAD_Setting 1

setblock ~ ~ ~ minecraft:air destroy

execute if score redstone_ore MAD_InfDestFlg matches 1 run function orion.mineall:redstone_ore/detect_next_block