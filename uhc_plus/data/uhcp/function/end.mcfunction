# Check player teams every second
execute unless score %end uhcp_game_time matches 1.. run function uhcp:end/check

scoreboard players remove %end uhcp_game_time 1
