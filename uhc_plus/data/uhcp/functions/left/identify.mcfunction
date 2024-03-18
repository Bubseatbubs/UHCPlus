# Check player's game ID
execute unless score @s uhcp_gameId = %global uhcp_gameId run function uhcp:left/spectator
execute if score @s uhcp_gameId = %global uhcp_gameId run function uhcp:left/in_game
