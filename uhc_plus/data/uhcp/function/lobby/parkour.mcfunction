# Swap between red and yellow candles
execute unless score %lobby_parkour uhcp_game_time matches 1.. align y run return run function uhcp:lobby/parkour/red_candles
execute if score %lobby_parkour uhcp_game_time matches 20 align y run function uhcp:lobby/parkour/yellow_candles
