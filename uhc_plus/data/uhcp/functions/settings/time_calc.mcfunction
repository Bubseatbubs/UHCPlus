# Calculate time for display
scoreboard players set %time_calc uhcp_initStatus 72000
scoreboard players operation %time_calcH uhcp_gameTime = %time_calc uhcp_settings
scoreboard players operation %time_calcH uhcp_gameTime /= %time_calc uhcp_initStatus
scoreboard players set %time_calc uhcp_initStatus 1200
scoreboard players operation %time_calcM uhcp_gameTime = %time_calc uhcp_settings
scoreboard players operation %time_calcM uhcp_gameTime /= %time_calc uhcp_initStatus
scoreboard players operation %time_calcM2 uhcp_gameTime = %time_calcM uhcp_gameTime
scoreboard players set %time_calc uhcp_initStatus 60
scoreboard players operation %time_calc uhcp_initStatus *= %time_calcH uhcp_gameTime
scoreboard players operation %time_calcM uhcp_gameTime -= %time_calc uhcp_initStatus
scoreboard players set %time_calc uhcp_initStatus 20
scoreboard players operation %time_calcS uhcp_gameTime = %time_calc uhcp_settings
scoreboard players operation %time_calcS uhcp_gameTime /= %time_calc uhcp_initStatus
scoreboard players set %time_calc uhcp_initStatus 60
scoreboard players operation %time_calc uhcp_initStatus *= %time_calcM2 uhcp_gameTime
scoreboard players operation %time_calcS uhcp_gameTime -= %time_calc uhcp_initStatus
