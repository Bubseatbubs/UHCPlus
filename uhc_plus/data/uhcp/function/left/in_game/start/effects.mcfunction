# Calculate starting effect durations
# Resistance duration
scoreboard players set @s uhcp_initStatus 2400
scoreboard players operation @s uhcp_initStatus -= %time uhcp_game_time
execute store result storage uhcp:start_effects duration int 0.05 run scoreboard players get @s uhcp_initStatus
function uhcp:left/in_game/start/resistance with storage uhcp:start_effects

# Speed duration
execute unless score %time uhcp_game_time matches ..280 run return fail
scoreboard players remove @s uhcp_initStatus 2100
execute store result storage uhcp:start_effects duration int 0.05 run scoreboard players get @s uhcp_initStatus
function uhcp:left/in_game/start/speed with storage uhcp:start_effects
