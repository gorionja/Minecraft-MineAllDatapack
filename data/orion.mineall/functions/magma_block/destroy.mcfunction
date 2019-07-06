# ------------------------------------------------------------- #
# magma_block/destroy.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] magma_block/destroy","italic":true,"color":"red"}]

scoreboard players add current_block_size MAD_Setting 1

setblock ~ ~ ~ minecraft:air destroy

execute if score magma_block MAD_InfDestFlg matches 1 run function orion.mineall:magma_block/detect_next_block