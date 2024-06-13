# Set difficulty to easy
scoreboard players set %difficulty uhcp_settings 0
execute in minecraft:overworld run difficulty easy
execute in minecraft:the_end run difficulty easy
execute in minecraft:the_nether run difficulty easy
tellraw @s [{"text":"The difficulty of the game has been changed to ","color":"white"},{"text":"Easy","color":"gold"},{"text":".","color":"white"}]
title @a actionbar [{"text":"Game difficulty set to ","color":"white"},{"text":"Easy","color":"gold"}]
