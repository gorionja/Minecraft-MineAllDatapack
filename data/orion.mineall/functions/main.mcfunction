# ------------------------------------------------------------- #
# main.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] main","italic":true,"color":"red"}]

### ツルハシ使用検知
execute as @a[scores={MAD_UsedWPAxe=1..}] at @s run function orion.mineall:run
execute as @a[scores={MAD_UsedSPAxe=1..}] at @s run function orion.mineall:run
execute as @a[scores={MAD_UsedIPAxe=1..}] at @s run function orion.mineall:run
execute as @a[scores={MAD_UsedGPAxe=1..}] at @s run function orion.mineall:run
execute as @a[scores={MAD_UsedDPAxe=1..}] at @s run function orion.mineall:run

### スニーク時間をリセット
scoreboard players set @a MAD_SneakTime 0