# Apply effects
execute if score %time uhcp_game_time matches ..23999 run effect give @s minecraft:speed infinite 1 false
execute if score %time uhcp_game_time matches 24000.. run effect give @s minecraft:speed infinite 0 false
