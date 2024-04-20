# Check player's game ID
execute unless score @s uhcp_game_ID = %global uhcp_game_ID run return run function uhcp:left/spectator

# Run for players whom are part of game
execute as @s[gamemode=!spectator] run function uhcp:left/in_game/alive

# Add to team
execute if score %pvp uhcp_settings matches ..0 as @s[team=grace_period] run function uhcp:left/in_game/team

tag @s remove UHCP_Died
