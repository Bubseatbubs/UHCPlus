effect give @s minecraft:mining_fatigue 480 0 false
effect clear @s minecraft:haste

scoreboard players set @s uhcp_game_time 9600
execute if score %time uhcp_game_time matches 9600.. run function uhcp:augments/effects/gold/latelooter/haste
