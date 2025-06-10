give @s minecraft:wolf_spawn_egg 2
give @s minecraft:bone 12

scoreboard players set @s uhcp_game_time 36000
execute if score %time uhcp_game_time matches 36000.. run function uhcp:augments/effects/gold/mansbestfriend/identify
