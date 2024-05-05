give @s minecraft:firework_rocket 1

scoreboard players add @s uhcp_game_time 3600
execute if score %time uhcp_game_time >= @s uhcp_game_time run function uhcp:augments/effects/prismatic/totheskies/give
