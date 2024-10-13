# Minimum of 3 minutes
effect clear @s minecraft:resistance

scoreboard players set @s uhcp_game_time -1

execute unless score %time uhcp_game_time matches 0..3580 run return fail
scoreboard players set @s uhcp_initStatus 3600
scoreboard players operation @s uhcp_initStatus -= %time uhcp_game_time
execute store result storage uhcp:start_effects duration int 0.05 run scoreboard players get @s uhcp_initStatus
function uhcp:left/in_game/start/resistance with storage uhcp:start_effects
