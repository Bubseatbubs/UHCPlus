# Place lobby
forceload add -96 -96 95 95
place structure uhcp:lobby 0 280 0
execute as @e[tag=UHCP_LobbyOrigin,limit=1] at @s align y run function uhcp:lobby/place/features
forceload remove -96 -96 95 95
