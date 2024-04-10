# Kill entities
execute as @e[tag=UHCP_Lobby] run function uhcp:entity/instant_kill
execute as @e[type=minecraft:warden,predicate=uhcp:lobby/in_lobby] run function uhcp:entity/instant_kill

# Remove lobby
forceload add 0 0 3 3
fill 0 311 0 60 318 62 minecraft:air
fill 0 303 0 60 310 62 minecraft:air
fill 0 295 0 60 302 62 minecraft:air
fill 0 287 0 60 294 62 minecraft:air
fill 0 280 0 60 286 62 minecraft:air
kill @e[type=minecraft:item]
forceload remove 0 0 3 3
