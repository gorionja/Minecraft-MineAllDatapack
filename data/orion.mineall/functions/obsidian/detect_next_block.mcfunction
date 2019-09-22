# ------------------------------------------------------------- #
# obsidian/detect_next_block.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] obsidian/detect_next_block","italic":true,"color":"red"}]

# Y ~0 の探索
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~ ~ ~1 if block ~ ~ ~ minecraft:obsidian run function orion.mineall:obsidian/destroy
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:obsidian run function orion.mineall:obsidian/destroy
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~1 ~ ~ if block ~ ~ ~ minecraft:obsidian run function orion.mineall:obsidian/destroy
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~1 ~ ~1 if block ~ ~ ~ minecraft:obsidian run function orion.mineall:obsidian/destroy
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~1 ~ ~-1 if block ~ ~ ~ minecraft:obsidian run function orion.mineall:obsidian/destroy
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:obsidian run function orion.mineall:obsidian/destroy
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~-1 ~ ~1 if block ~ ~ ~ minecraft:obsidian run function orion.mineall:obsidian/destroy
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~-1 ~ ~-1 if block ~ ~ ~ minecraft:obsidian run function orion.mineall:obsidian/destroy
# Y +1 の探索
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~ ~1 ~ if block ~ ~ ~ minecraft:obsidian run function orion.mineall:obsidian/destroy
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~ ~1 ~1 if block ~ ~ ~ minecraft:obsidian run function orion.mineall:obsidian/destroy
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~ ~1 ~-1 if block ~ ~ ~ minecraft:obsidian run function orion.mineall:obsidian/destroy
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~1 ~1 ~ if block ~ ~ ~ minecraft:obsidian run function orion.mineall:obsidian/destroy
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~1 ~1 ~1 if block ~ ~ ~ minecraft:obsidian run function orion.mineall:obsidian/destroy
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~1 ~1 ~-1 if block ~ ~ ~ minecraft:obsidian run function orion.mineall:obsidian/destroy
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~-1 ~1 ~ if block ~ ~ ~ minecraft:obsidian run function orion.mineall:obsidian/destroy
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~-1 ~1 ~1 if block ~ ~ ~ minecraft:obsidian run function orion.mineall:obsidian/destroy
execute if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~-1 ~1 ~-1 if block ~ ~ ~ minecraft:obsidian run function orion.mineall:obsidian/destroy
# Y -1 の探索
execute if score enable_under_block MAD_Setting matches 1 if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:obsidian run function orion.mineall:obsidian/destroy
execute if score enable_under_block MAD_Setting matches 1 if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~ ~-1 ~1 if block ~ ~ ~ minecraft:obsidian run function orion.mineall:obsidian/destroy
execute if score enable_under_block MAD_Setting matches 1 if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~ ~-1 ~-1 if block ~ ~ ~ minecraft:obsidian run function orion.mineall:obsidian/destroy
execute if score enable_under_block MAD_Setting matches 1 if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~1 ~-1 ~ if block ~ ~ ~ minecraft:obsidian run function orion.mineall:obsidian/destroy
execute if score enable_under_block MAD_Setting matches 1 if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~1 ~-1 ~1 if block ~ ~ ~ minecraft:obsidian run function orion.mineall:obsidian/destroy
execute if score enable_under_block MAD_Setting matches 1 if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~1 ~-1 ~-1 if block ~ ~ ~ minecraft:obsidian run function orion.mineall:obsidian/destroy
execute if score enable_under_block MAD_Setting matches 1 if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~-1 ~-1 ~ if block ~ ~ ~ minecraft:obsidian run function orion.mineall:obsidian/destroy
execute if score enable_under_block MAD_Setting matches 1 if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~-1 ~-1 ~1 if block ~ ~ ~ minecraft:obsidian run function orion.mineall:obsidian/destroy
execute if score enable_under_block MAD_Setting matches 1 if score current_block_size MAD_Setting < max_block_size MAD_Setting positioned ~-1 ~-1 ~-1 if block ~ ~ ~ minecraft:obsidian run function orion.mineall:obsidian/destroy
