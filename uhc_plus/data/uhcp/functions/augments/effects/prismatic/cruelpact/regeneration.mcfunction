effect give @s minecraft:regeneration 4 1

scoreboard players add @s uhcp_game_time 1200
execute if score %time uhcp_game_time >= @s uhcp_game_time run function uhcp:augments/effects/prismatic/cruelpact/regeneration
