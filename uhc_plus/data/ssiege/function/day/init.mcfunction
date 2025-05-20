# Halt day
scoreboard players set %day uhcp_initStatus 1
scoreboard players set %day_countdown uhcp_game_time 0
gamerule doDaylightCycle false

# Calculations
execute store result score %day uhcp_game_time run time query daytime
scoreboard players operation %day_round uhcp_game_time = %day uhcp_game_time
scoreboard players set %const uhcp_initStatus 1000
scoreboard players operation %day_round uhcp_game_time /= %const uhcp_initStatus
scoreboard players operation %day_round uhcp_game_time *= %const uhcp_initStatus
execute unless score %day uhcp_game_time = %day_round uhcp_game_time run function uhcp:day/round
execute if score %day_round uhcp_game_time matches 7000..24000 run scoreboard players remove %day_round uhcp_game_time 24000
scoreboard players set %day_forward uhcp_game_time 6000
scoreboard players operation %day_forward uhcp_game_time -= %day_round uhcp_game_time
