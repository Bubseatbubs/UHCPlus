# Game start countdown
execute if score %start_countdown uhcp_initStatus matches 1.. run function uhcp:lobby/countdown

# Patron
execute as @a[scores={patron=1..99}] run function uhcp:lobby/patron/menu
execute as @a[scores={patron=100..109}] at @s run function uhcp:lobby/patron/select
execute if score %patrons uhcp_settings matches 1 run scoreboard players enable @a patron

# Team
execute if score %team uhcp_settings matches 1 if score %players_select_teams uhcp_settings matches 1 run function uhcp:lobby/team

# At lobby origin
execute at @e[tag=UHCP_LobbyOrigin,limit=1] run function uhcp:lobby/origin

# Lobby parkour
execute unless score %lobby_parkour uhcp_game_time matches 1.. as @e[tag=UHCP_LobbyOrigin,limit=1] at @s align y run return run function uhcp:lobby/parkour/red_candles
execute if score %lobby_parkour uhcp_game_time matches 20 as @e[tag=UHCP_LobbyOrigin,limit=1] at @s align y run function uhcp:lobby/parkour/yellow_candles
scoreboard players remove %lobby_parkour uhcp_game_time 1

# Skip travel
execute as @a[scores={lobby=1}] run function uhcp:lobby/teleport/menu
execute as @a[scores={lobby=2..6}] run function uhcp:lobby/teleport/select
scoreboard players enable @a lobby

# Credits - player head rotation
execute as @e[tag=UHCP_LobbyCredits] at @s run rotate @s ~1 ~

# Kill arrows in ground
execute unless score %lobby_arrows uhcp_game_time matches 1.. run function uhcp:lobby/kill_arrows
scoreboard players remove %lobby_arrows uhcp_game_time 1
