# Set difficulty to hard
scoreboard players set %difficulty uhcp_settings 2
execute in minecraft:overworld run difficulty hard
execute in minecraft:the_end run difficulty hard
execute in minecraft:the_nether run difficulty hard
tellraw @s [{"text":"The difficulty of the game has been changed to ","color":"white"},{"text":"Hard","color":"gold"},{"text":".","color":"white"}]
title @a actionbar [{"text":"Game difficulty set to ","color":"white"},{"text":"Hard","color":"gold"}]
