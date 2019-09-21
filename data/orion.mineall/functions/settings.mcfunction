# ------------------------------------------------------------- #
# settings.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] settings","italic":true,"color":"red"}]

tellraw @s [{"text":"\u00A7m                                                                                ","color":"dark_gray"}]
tellraw @s [{"text":"                             MineAll Settings\n"}]

execute if score decrease_durability MAD_Setting matches 1 run tellraw @s ["",{"text":"[On] 〇 ","color":"green","clickEvent":{"action":"run_command","value":"/function orion.mineall:settings_decrease_durability_on"}},{"text":" "},{"text":"[Off]    ","color":"red","clickEvent":{"action":"run_command","value":"/function orion.mineall:settings_decrease_durability_off"}},{"text":"ツール耐久度の減少"}]
execute if score decrease_durability MAD_Setting matches 0 run tellraw @s ["",{"text":"[On]    ","color":"red","clickEvent":{"action":"run_command","value":"/function orion.mineall:settings_decrease_durability_on"}},{"text":" "},{"text":"[Off] 〇 ","color":"green","clickEvent":{"action":"run_command","value":"/function orion.mineall:settings_decrease_durability_off"}},{"text":"ツール耐久度の減少"}]
tellraw @s [{"text":"\u00A7m                                                                                ","color":"dark_gray"}]
gamerule sendCommandFeedback false