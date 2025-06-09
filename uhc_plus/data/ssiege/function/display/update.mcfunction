# Sniffer Siege game display upates
scoreboard players operation %next_titan uhcp_game_time = %titans uhcp_game_time

scoreboard players set %display uhcp_game_time 1200
scoreboard players operation %displayM uhcp_game_time = %next_titan uhcp_game_time
scoreboard players operation %displayS uhcp_game_time = %next_titan uhcp_game_time
scoreboard players operation %displayM uhcp_game_time /= %display uhcp_game_time
scoreboard players operation %displayS uhcp_game_time %= %display uhcp_game_time
scoreboard players set %display uhcp_game_time 20
scoreboard players operation %displayS uhcp_game_time /= %display uhcp_game_time

execute store result storage ssiege:display time.titan_minutes int 1 run scoreboard players get %displayM uhcp_game_time
execute store result storage ssiege:display time.titan_seconds int 1 run scoreboard players get %displayS uhcp_game_time

execute if score %displayS uhcp_game_time matches 10..59 run function ssiege:display/double with storage ssiege:display time
function ssiege:display/single with storage ssiege:display time

# Universal updates
function uhcp:display/update
