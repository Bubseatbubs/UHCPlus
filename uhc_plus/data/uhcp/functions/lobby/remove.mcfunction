# Kill entities
forceload add -96 -96 95 95
execute as @e[tag=UHCP_Lobby,tag=!UHCP_LobbyOrigin] run function uhcp:entity/instant_kill

# Remove lobby
execute at @e[tag=UHCP_LobbyOrigin,limit=1] align y run function uhcp:lobby/place/air
kill @e[type=minecraft:item]
kill @e[tag=UHCP_LobbyOrigin]
forceload remove -96 -96 95 95
