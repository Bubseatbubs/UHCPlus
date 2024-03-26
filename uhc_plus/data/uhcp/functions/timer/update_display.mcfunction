# Update Display
scoreboard players remove %update_display uhcp_game_time 1
execute unless score %update_display uhcp_game_time matches ..0 run return 0
scoreboard players set %update_display uhcp_game_time 10

# Update Player Count
function uhcp:timer/update_playersleft
function uhcp:timer/update_bordersize

execute unless score %time_freeze uhcp_initStatus matches 1 run function uhcp:timer/update_displaytimer
