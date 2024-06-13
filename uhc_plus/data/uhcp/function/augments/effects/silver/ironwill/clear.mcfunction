effect clear @s minecraft:resistance
execute if score %time uhcp_game_time matches 0..2400 run effect give @s minecraft:resistance 120 4 false

scoreboard players set @s uhcp_game_time -1
