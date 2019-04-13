# initialize
tellraw @a [{"text":"mineall loaded.","italic":true,"color":"green"}]
scoreboard objectives add MineAll_Tick dummy
scoreboard objectives add MineAll_Sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add MineAll_Sneak_Kp dummy

execute as @a run scoreboard players set @s MineAll_Tick 0
execute as @a run scoreboard players set @s MineAll_Sneak 0
execute as @a run scoreboard players set @s MineAll_Sneak_Kp 0