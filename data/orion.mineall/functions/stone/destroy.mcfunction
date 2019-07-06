# ------------------------------------------------------------- #
# stone/destroy.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] stone/destroy","italic":true,"color":"red"}]

scoreboard players add current_block_size MAD_Setting 1

setblock ~ ~ ~ minecraft:air destroy

execute if score stone MAD_InfDestFlg matches 1 run function orion.mineall:stone/detect_next_block