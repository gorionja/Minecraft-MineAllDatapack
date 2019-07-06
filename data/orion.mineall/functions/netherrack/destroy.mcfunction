# ------------------------------------------------------------- #
# netherrack/destroy.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] netherrack/destroy","italic":true,"color":"red"}]

scoreboard players add current_block_size MAD_Setting 1

setblock ~ ~ ~ minecraft:air destroy

execute if score netherrack MAD_InfDestFlg matches 1 run function orion.mineall:netherrack/detect_next_block