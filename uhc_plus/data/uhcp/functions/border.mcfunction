# World border
execute if score %border_countdown uhcp_game_time matches 0 run function uhcp:border/shrink

scoreboard players remove %border_countdown uhcp_game_time 1
