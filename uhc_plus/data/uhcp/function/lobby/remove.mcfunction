# Kill entities
forceload add -80 -80 79 79
execute as @e[tag=UHCP_Lobby,tag=!UHCP_LobbyOrigin] run function uhcp:entity/instant_kill
execute as @e[tag=UHCP_Summon] run function uhcp:entity/instant_kill

# Remove lobby
execute at @e[tag=UHCP_LobbyOrigin,limit=1] align y run function uhcp:lobby/place/air
kill @e[type=#uhcp:reset/kill]
kill @e[type=minecraft:falling_block]
kill @e[type=minecraft:item]
kill @e[tag=UHCP_LobbyOrigin]
forceload remove -80 -80 79 79
