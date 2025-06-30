effect give @s minecraft:absorption infinite 9 false
effect give @s minecraft:glowing 1200 0 true

scoreboard players set @s uhcp_game_time 24000
execute if score %time uhcp_game_time matches 24000.. run function uhcp:augments/effects/prismatic/centerofattention/clear
