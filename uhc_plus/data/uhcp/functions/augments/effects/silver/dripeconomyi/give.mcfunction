give @s minecraft:gold_ingot 1

scoreboard players add @s uhcp_game_time 4800
execute if score %time uhcp_game_time >= @s uhcp_game_time run function uhcp:augments/effects/timed
