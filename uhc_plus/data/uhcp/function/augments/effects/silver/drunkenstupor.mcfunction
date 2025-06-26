# Nausea
effect give @s minecraft:nausea 180 0 false

# Timed effect
scoreboard players set @s uhcp_game_time 3600
execute if score %time uhcp_game_time matches 3600.. run function uhcp:augments/effects/silver/drunkenstupor/cure
