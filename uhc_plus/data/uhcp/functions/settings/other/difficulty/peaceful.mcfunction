# Set difficulty to peaceful
scoreboard players set %difficulty uhcp_settings 3
execute in minecraft:overworld run difficulty peaceful
execute in minecraft:the_end run difficulty peaceful
execute in minecraft:the_nether run difficulty peaceful
tellraw @s [{"text":"The difficulty of the game has been changed to ","color":"white"},{"text":"Peaceful","color":"gold"},{"text":".","color":"white"}]
title @a actionbar [{"text":"Game difficulty set to ","color":"white"},{"text":"Peaceful","color":"gold"}]
