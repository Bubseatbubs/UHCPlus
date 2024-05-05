give @s minecraft:apple 1

scoreboard players add @s uhcp_game_time 2400
execute if score %time uhcp_game_time >= @s uhcp_game_time run function uhcp:augments/effects/timed
