# Set difficulty to normal
scoreboard players set %difficulty uhcp_settings 1
execute in minecraft:overworld run difficulty normal
execute in minecraft:the_end run difficulty normal
execute in minecraft:the_nether run difficulty normal
tellraw @s [{"text":"The difficulty of the game has been changed to ","color":"white"},{"text":"Normal","color":"gold"},{"text":".","color":"white"}]
title @a actionbar [{"text":"Game difficulty set to ","color":"white"},{"text":"Normal","color":"gold"}]
