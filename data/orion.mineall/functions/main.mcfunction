# ------------------------------------------------------------- #
# main.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] main","italic":true,"color":"red"}]

### ツルハシ使用検知
execute as @a[scores={MAD_UsedWPAxe=1..}] at @s run function orion.mineall:if_use_silk
execute as @a[scores={MAD_UsedSPAxe=1..}] at @s run function orion.mineall:if_use_silk
execute as @a[scores={MAD_UsedIPAxe=1..}] at @s run function orion.mineall:if_use_silk
execute as @a[scores={MAD_UsedGPAxe=1..}] at @s run function orion.mineall:if_use_silk
execute as @a[scores={MAD_UsedDPAxe=1..}] at @s run function orion.mineall:if_use_silk

### スニーク時間をリセット
scoreboard players set @a MAD_SneakTime 0

gamerule sendCommandFeedback true

# summon minecraft:area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648}
# summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Health:1.0f,CustomName:"{\"text\":\"fortune_randomizer_lv0_glowstone\"}"}