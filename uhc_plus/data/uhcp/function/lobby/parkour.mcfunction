# Swap between red and yelow candles
execute unless score %lobby_parkour uhcp_game_time matches 1.. run return run execute at @e[tag=UHCP_LobbyOrigin,limit=1] align y run function uhcp:lobby/parkour/red_candles
execute if score %lobby_parkour uhcp_game_time matches 20 at @e[tag=UHCP_LobbyOrigin,limit=1] align y run function uhcp:lobby/parkour/yellow_candles
