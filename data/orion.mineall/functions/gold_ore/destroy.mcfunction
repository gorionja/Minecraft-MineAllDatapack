# ------------------------------------------------------------- #
# gold_ore/destroy.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] gold_ore/destroy","italic":true,"color":"red"}]

scoreboard players add current_block_size MAD_Setting 1

setblock ~ ~ ~ minecraft:air destroy

execute if score gold_ore MAD_InfDestFlg matches 1 run function orion.mineall:gold_ore/detect_next_block