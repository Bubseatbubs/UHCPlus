# Initial calculations
execute unless score %day uhcp_initStatus matches 1 run function uhcp:day/init

# Add time
execute if score %day_countdown uhcp_game_time matches 0 if score %day_forward uhcp_game_time matches 1000.. run function uhcp:day/add

# Timer
scoreboard players remove %day_countdown uhcp_game_time 1
