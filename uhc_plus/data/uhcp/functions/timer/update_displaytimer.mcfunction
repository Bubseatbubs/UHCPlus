# Update Display Timer
scoreboard players set %display uhcp_game_time 1200
scoreboard players operation %displayM uhcp_game_time = %time uhcp_game_time
scoreboard players operation %displayM uhcp_game_time /= %display uhcp_game_time
scoreboard players set %display uhcp_game_time 20
scoreboard players operation %displayS uhcp_game_time = %time uhcp_game_time
scoreboard players operation %displayS uhcp_game_time /= %display uhcp_game_time
scoreboard players set %display uhcp_game_time 60
scoreboard players operation %display uhcp_game_time *= %displayM uhcp_game_time
scoreboard players operation %displayS uhcp_game_time -= %display uhcp_game_time

execute store result storage uhcp:displaytime input.seconds int 1 run scoreboard players get %displayS uhcp_game_time
execute store result storage uhcp:displaytime input.minutes int 1 run scoreboard players get %displayM uhcp_game_time

execute if score %displayS uhcp_game_time matches 0..9 run function uhcp:timer/macro_displaytimerzero with storage uhcp:displaytime input
execute if score %displayS uhcp_game_time matches 10..59 run function uhcp:timer/macro_displaytimer with storage uhcp:displaytime input
