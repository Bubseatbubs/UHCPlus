effect give @s minecraft:speed 1200 0 false
scoreboard players set @s uhcp_game_time 24000
execute if score %time uhcp_game_time matches 24000.. run function uhcp:augments/effects/silver/speedystart/clear
