# ------------------------------------------------------------- #
# settings.mcfunction
# author:orion
# ------------------------------------------------------------- #
#tellraw @a [{"text":"[debug] settings","italic":true,"color":"red"}]

tellraw @s [{"text":"\u00A7m                                                                                ","color":"dark_gray"}]
tellraw @s [{"text":"                           MineAll Settings"}]
tellraw @s [{"text":"※プレイヤーごとの設定ではなく、ワールドで共通の設定であることに注意してください。\n","color":"gray"}]

execute if score decrease_durability MAD_Setting matches 1 run tellraw @s ["",{"text":"[On] 〇 ","color":"green","clickEvent":{"action":"run_command","value":"/function orion.mineall:settings_decrease_durability_on"}},{"text":" "},{"text":"[Off]    ","color":"red","clickEvent":{"action":"run_command","value":"/function orion.mineall:settings_decrease_durability_off"}},{"text":"ツール耐久度の減少"}]
execute if score decrease_durability MAD_Setting matches 0 run tellraw @s ["",{"text":"[On]    ","color":"red","clickEvent":{"action":"run_command","value":"/function orion.mineall:settings_decrease_durability_on"}},{"text":" "},{"text":"[Off] 〇 ","color":"green","clickEvent":{"action":"run_command","value":"/function orion.mineall:settings_decrease_durability_off"}},{"text":"ツール耐久度の減少"}]
execute if score limit_ore_flg MAD_Setting matches 1 run tellraw @s ["",{"text":"[On] 〇 ","color":"green","clickEvent":{"action":"run_command","value":"/function orion.mineall:settings_limit_ore_flg_on"}},{"text":" "},{"text":"[Off]    ","color":"red","clickEvent":{"action":"run_command","value":"/function orion.mineall:settings_limit_ore_flg_off"}},{"text":"鉱石限定破壊モード"}]
execute if score limit_ore_flg MAD_Setting matches 0 run tellraw @s ["",{"text":"[On]    ","color":"red","clickEvent":{"action":"run_command","value":"/function orion.mineall:settings_limit_ore_flg_on"}},{"text":" "},{"text":"[Off] 〇 ","color":"green","clickEvent":{"action":"run_command","value":"/function orion.mineall:settings_limit_ore_flg_off"}},{"text":"鉱石限定破壊モード"}]
execute if score anable_under_block MAD_Setting matches 1 run tellraw @s ["",{"text":"[On] 〇 ","color":"green","clickEvent":{"action":"run_command","value":"/function orion.mineall:settings_anable_under_block_on"}},{"text":" "},{"text":"[Off]    ","color":"red","clickEvent":{"action":"run_command","value":"/function orion.mineall:settings_anable_under_block_off"}},{"text":"下方ブロックを破壊する"}]
execute if score anable_under_block MAD_Setting matches 0 run tellraw @s ["",{"text":"[On]    ","color":"red","clickEvent":{"action":"run_command","value":"/function orion.mineall:settings_anable_under_block_on"}},{"text":" "},{"text":"[Off] 〇 ","color":"green","clickEvent":{"action":"run_command","value":"/function orion.mineall:settings_anable_under_block_off"}},{"text":"下方ブロックを破壊する"}]
tellraw @s [{"text":""}]
execute run tellraw @s ["",{"text":"[Click]","color":"blue","clickEvent":{"action":"run_command","value":"/function orion.mineall:settings_ore_flag"}},{"text":" 鉱石ブロックの設定"}]
execute run tellraw @s ["",{"text":"[Click]","color":"blue","clickEvent":{"action":"run_command","value":"/function orion.mineall:settings_infinit_destroy_flag"}},{"text":" 無限破壊ブロックの設定"}]
execute run tellraw @s ["",{"text":"[Click]","color":"blue","clickEvent":{"action":"run_command","value":"/function orion.mineall:settings_max_block_size"}},{"text":" 無限破壊ブロック上限数の設定"}]
tellraw @s [{"text":""}]
execute run tellraw @s ["",{"text":"[Click]","color":"light_purple","clickEvent":{"action":"run_command","value":"/function orion.mineall:settings_initialize"}},{"text":" 設定の初期化"}]

tellraw @s [{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

gamerule sendCommandFeedback false