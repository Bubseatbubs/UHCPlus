execute if score @s uhcp_game_time matches 3600 run return run function uhcp:augments/effects/silver/drunkenstupor/reward

effect clear @s minecraft:strength
effect clear @s minecraft:resistance

scoreboard players set @s uhcp_game_time -1
