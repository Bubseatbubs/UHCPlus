# Place lobby
forceload add -80 -80 79 79
place structure uhcp:lobby 0 280 0
execute as @e[tag=UHCP_LobbyOrigin,limit=1] at @s align y run function uhcp:lobby/place/features
forceload remove -80 -80 79 79
