# Check pressure plate
execute at @e[tag=UHCP_LobbyOrigin] positioned ^55 ^15.5 ^48 if block ~ ~ ~ minecraft:crimson_pressure_plate[powered=true] run function uhcp:lobby/effect/speed/player
