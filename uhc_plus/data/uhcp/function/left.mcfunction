# Manage players whom left
execute unless score %game uhcp_initStatus matches 1 run return run function uhcp:left/lobby

# Check player's game ID
execute unless score @s uhcp_game_id = %global uhcp_game_id run function uhcp:left/spectator

# Run for players whom are part of game
execute as @s[gamemode=!spectator,gamemode=!creative] run function uhcp:left/in_game/alive

# Add to team
execute if score %pvp uhcp_settings matches ..0 as @s[team=grace_period] run function uhcp:left/in_game/team

tag @s remove UHCP_Died
scoreboard players reset @s uhcp_leave
