# Check player's game ID
execute unless score @s uhcp_game_ID = %global uhcp_game_ID run function uhcp:left/spectator
execute if score @s[gamemode=!spectator] uhcp_game_ID = %global uhcp_game_ID run function uhcp:left/in_game
