# Calculate time for display
scoreboard players set %time_calc uhcp_initStatus 72000
scoreboard players operation %time_calcM uhcp_game_time = %time_calcH uhcp_game_time
scoreboard players operation %time_calcM uhcp_game_time %= %time_calc uhcp_initStatus
scoreboard players operation %time_calcS uhcp_game_time = %time_calcM uhcp_game_time
scoreboard players operation %time_calcH uhcp_game_time /= %time_calc uhcp_initStatus
scoreboard players set %time_calc uhcp_initStatus 1200
scoreboard players operation %time_calcS uhcp_game_time %= %time_calc uhcp_initStatus
scoreboard players operation %time_calcM uhcp_game_time /= %time_calc uhcp_initStatus
scoreboard players set %time_calc uhcp_initStatus 20
scoreboard players operation %time_calcS uhcp_game_time /= %time_calc uhcp_initStatus
