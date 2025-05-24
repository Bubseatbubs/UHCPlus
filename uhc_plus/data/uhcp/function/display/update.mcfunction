# Display update timer
scoreboard players remove %update_display uhcp_game_time 1
execute if score %update_display uhcp_game_time matches 1.. run return 0
scoreboard players set %update_display uhcp_game_time 10

# Display time
execute if score %time_freeze uhcp_initStatus matches 1 run return fail
execute if score %time uhcp_game_time matches 72000.. run return run function uhcp:display/time/hours
scoreboard players set %display uhcp_game_time 1200
scoreboard players operation %displayM uhcp_game_time = %time uhcp_game_time
scoreboard players operation %displayS uhcp_game_time = %time uhcp_game_time
scoreboard players operation %displayM uhcp_game_time /= %display uhcp_game_time
scoreboard players operation %displayS uhcp_game_time %= %display uhcp_game_time
scoreboard players set %display uhcp_game_time 20
scoreboard players operation %displayS uhcp_game_time /= %display uhcp_game_time

execute store result storage uhcp:display time.minutes int 1 run scoreboard players get %displayM uhcp_game_time
execute store result storage uhcp:display time.seconds int 1 run scoreboard players get %displayS uhcp_game_time

execute if score %displayS uhcp_game_time matches 10..59 run return run function uhcp:display/time/number/double with storage uhcp:display time
function uhcp:display/time/number/single with storage uhcp:display time
