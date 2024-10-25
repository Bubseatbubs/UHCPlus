# Display time with hours
scoreboard players set %display uhcp_game_time 72000
scoreboard players operation %displayH uhcp_game_time = %time uhcp_game_time
scoreboard players operation %displayM uhcp_game_time = %time uhcp_game_time
scoreboard players operation %displayM uhcp_game_time %= %display uhcp_game_time
scoreboard players operation %displayS uhcp_game_time = %displayM uhcp_game_time
scoreboard players operation %displayH uhcp_game_time /= %display uhcp_game_time
scoreboard players set %display uhcp_game_time 1200
scoreboard players operation %displayS uhcp_game_time %= %display uhcp_game_time
scoreboard players operation %displayM uhcp_game_time /= %display uhcp_game_time
scoreboard players set %display uhcp_game_time 20
scoreboard players operation %displayS uhcp_game_time /= %display uhcp_game_time

execute store result storage uhcp:display time.hours int 1 run scoreboard players get %displayH uhcp_game_time
execute store result storage uhcp:display time.minutes int 1 run scoreboard players get %displayM uhcp_game_time
execute store result storage uhcp:display time.seconds int 1 run scoreboard players get %displayS uhcp_game_time

execute if score %displayM uhcp_game_time matches 10..59 run return run function uhcp:display/time/number/hours/double
execute if score %displayS uhcp_game_time matches 10..59 run return run function uhcp:display/time/number/hours/single/double with storage uhcp:display time
function uhcp:display/time/number/hours/single/single with storage uhcp:display time
