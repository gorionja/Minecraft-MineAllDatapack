clear
give @p minecraft:diamond_pickaxe 1
give @p minecraft:diamond_pickaxe{Enchantments:[{id:"minecraft:fortune",lvl:1s}]} 1
give @p minecraft:diamond_pickaxe{Enchantments:[{id:"minecraft:fortune",lvl:2s}]} 1
give @p minecraft:diamond_pickaxe{Enchantments:[{id:"minecraft:fortune",lvl:3s}]} 1
give @p minecraft:diamond_pickaxe{Enchantments:[{id:"minecraft:fortune",lvl:1s},{id:"minecraft:efficiency",lvl:5s}]} 1
give @p minecraft:diamond_pickaxe{Enchantments:[{id:"minecraft:fortune",lvl:2s},{id:"minecraft:efficiency",lvl:5s}]} 1
give @p minecraft:diamond_pickaxe{Enchantments:[{id:"minecraft:fortune",lvl:3s},{id:"minecraft:efficiency",lvl:5s}]} 1
give @p minecraft:chest 10

execute as @s positioned ~ ~ ~ run fill ~ ~ ~ ~5 ~ ~5 redstone_ore replace
execute as @s positioned ~5 ~ ~ run fill ~ ~ ~ ~5 ~ ~5 diamond_ore replace
execute as @s positioned ~10 ~ ~ run fill ~ ~ ~ ~5 ~ ~5 emerald_ore replace
execute as @s positioned ~15 ~ ~ run fill ~ ~ ~ ~5 ~ ~5 lapis_ore replace
execute as @s positioned ~20 ~ ~ run fill ~ ~ ~ ~5 ~ ~5 nether_quartz_ore replace
execute as @s positioned ~25 ~ ~ run fill ~ ~ ~ ~5 ~ ~5 coal_ore replace

# execute as @s positioned ~5 ~ ~ run fill ~ ~ ~ ~4 ~ ~9 glowstone replace
# execute as @s positioned ~10 ~ ~ run fill ~ ~ ~ ~4 ~ ~9 sea_lantern replace
# execute as @s positioned ~15 ~ ~ run fill ~ ~ ~ ~4 ~ ~9 glowstone replace
# execute as @s positioned ~20 ~ ~ run fill ~ ~ ~ ~4 ~ ~9 sea_lantern replace
# execute as @s positioned ~25 ~ ~ run fill ~ ~ ~ ~4 ~ ~9 glowstone replace
# execute as @s positioned ~30 ~ ~ run fill ~ ~ ~ ~4 ~ ~9 sea_lantern replace
