# ------------------------------------------------------------- #
# redstone_ore/detect_next_block_silk.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] redstone_ore/detect_next_block_silk","italic":true,"color":"red"}]

# Y ~0 の探索
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~ ~ ~1 if block ~ ~ ~ minecraft:redstone_ore run function orion.mineall:redstone_ore/destroy_silk
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:redstone_ore run function orion.mineall:redstone_ore/destroy_silk
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~1 ~ ~ if block ~ ~ ~ minecraft:redstone_ore run function orion.mineall:redstone_ore/destroy_silk
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~1 ~ ~1 if block ~ ~ ~ minecraft:redstone_ore run function orion.mineall:redstone_ore/destroy_silk
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~1 ~ ~-1 if block ~ ~ ~ minecraft:redstone_ore run function orion.mineall:redstone_ore/destroy_silk
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:redstone_ore run function orion.mineall:redstone_ore/destroy_silk
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~-1 ~ ~1 if block ~ ~ ~ minecraft:redstone_ore run function orion.mineall:redstone_ore/destroy_silk
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~-1 ~ ~-1 if block ~ ~ ~ minecraft:redstone_ore run function orion.mineall:redstone_ore/destroy_silk
# Y +1 の探索
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~ ~1 ~ if block ~ ~ ~ minecraft:redstone_ore run function orion.mineall:redstone_ore/destroy_silk
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~ ~1 ~1 if block ~ ~ ~ minecraft:redstone_ore run function orion.mineall:redstone_ore/destroy_silk
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~ ~1 ~-1 if block ~ ~ ~ minecraft:redstone_ore run function orion.mineall:redstone_ore/destroy_silk
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~1 ~1 ~ if block ~ ~ ~ minecraft:redstone_ore run function orion.mineall:redstone_ore/destroy_silk
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~1 ~1 ~1 if block ~ ~ ~ minecraft:redstone_ore run function orion.mineall:redstone_ore/destroy_silk
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~1 ~1 ~-1 if block ~ ~ ~ minecraft:redstone_ore run function orion.mineall:redstone_ore/destroy_silk
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~-1 ~1 ~ if block ~ ~ ~ minecraft:redstone_ore run function orion.mineall:redstone_ore/destroy_silk
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~-1 ~1 ~1 if block ~ ~ ~ minecraft:redstone_ore run function orion.mineall:redstone_ore/destroy_silk
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~-1 ~1 ~-1 if block ~ ~ ~ minecraft:redstone_ore run function orion.mineall:redstone_ore/destroy_silk
# Y -1 の探索
execute if score enable_under_block MAD_Setting matches 1 if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:redstone_ore run function orion.mineall:redstone_ore/destroy_silk
execute if score enable_under_block MAD_Setting matches 1 if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~ ~-1 ~1 if block ~ ~ ~ minecraft:redstone_ore run function orion.mineall:redstone_ore/destroy_silk
execute if score enable_under_block MAD_Setting matches 1 if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~ ~-1 ~-1 if block ~ ~ ~ minecraft:redstone_ore run function orion.mineall:redstone_ore/destroy_silk
execute if score enable_under_block MAD_Setting matches 1 if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~1 ~-1 ~ if block ~ ~ ~ minecraft:redstone_ore run function orion.mineall:redstone_ore/destroy_silk
execute if score enable_under_block MAD_Setting matches 1 if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~1 ~-1 ~1 if block ~ ~ ~ minecraft:redstone_ore run function orion.mineall:redstone_ore/destroy_silk
execute if score enable_under_block MAD_Setting matches 1 if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~1 ~-1 ~-1 if block ~ ~ ~ minecraft:redstone_ore run function orion.mineall:redstone_ore/destroy_silk
execute if score enable_under_block MAD_Setting matches 1 if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~-1 ~-1 ~ if block ~ ~ ~ minecraft:redstone_ore run function orion.mineall:redstone_ore/destroy_silk
execute if score enable_under_block MAD_Setting matches 1 if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~-1 ~-1 ~1 if block ~ ~ ~ minecraft:redstone_ore run function orion.mineall:redstone_ore/destroy_silk
execute if score enable_under_block MAD_Setting matches 1 if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~-1 ~-1 ~-1 if block ~ ~ ~ minecraft:redstone_ore run function orion.mineall:redstone_ore/destroy_silk
