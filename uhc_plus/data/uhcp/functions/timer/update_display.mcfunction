# Update Display
scoreboard players remove %update_display uhcp_game_time 1
execute if score %update_display uhcp_game_time matches 1.. run return 0
scoreboard players set %update_display uhcp_game_time 10

# Update statistics
function uhcp:timer/update_playersleft
execute store result score %border uhcp_game_display run worldborder get
execute unless score %time_freeze uhcp_initStatus matches 1 run function uhcp:timer/update_displaytimer
