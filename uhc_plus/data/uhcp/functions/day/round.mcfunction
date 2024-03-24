# Round time up to nearest 1000 ticks
scoreboard players operation %day uhcp_gameTime -= %day_round uhcp_gameTime
scoreboard players operation %const uhcp_initStatus -= %day uhcp_gameTime
scoreboard players add %day_round uhcp_gameTime 1000
scoreboard players set %day_countdown uhcp_gameTime 20
execute store result storage uhcp:border day_time int 1 run scoreboard players get %const uhcp_initStatus
function uhcp:day/adjust with storage uhcp:border
