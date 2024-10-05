# Check pressure plate
execute at @e[tag=UHCP_LobbyOrigin] positioned ^30 ^27.5 ^30 if block ~ ~ ~ minecraft:warped_pressure_plate[powered=true] run function uhcp:lobby/item/glow_bow/player
