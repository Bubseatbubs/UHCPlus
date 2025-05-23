# Check for game end condition (when either Sniffer dies) every second
execute unless score %end uhcp_game_time matches 1.. run function ssiege:end/check

scoreboard players remove %end uhcp_game_time 1
