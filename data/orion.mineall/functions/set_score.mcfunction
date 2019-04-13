execute as @e[scores={MineAll_Sneak=1..,MineAll_Tick=20..}] if score @s MineAll_Sneak = @s MineAll_Sneak_Kp run scoreboard players set @s MineAll_Sneak 0
execute as @e[scores={MineAll_Sneak=1..}] run scoreboard players add @s MineAll_Tick 1
execute as @e[scores={MineAll_Sneak=1..}] run scoreboard players operation @s MineAll_Sneak_Kp = @s MineAll_Sneak
execute as @e[scores={MineAll_Sneak=0}] run scoreboard players set @s MineAll_Tick 0
execute as @e[scores={MineAll_Sneak=0}] run scoreboard players set @s MineAll_Sneak_Kp 0