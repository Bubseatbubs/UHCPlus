# Check pressure plate
execute at @e[tag=UHCP_LobbyOrigin] positioned ^40 ^10.5 ^55 if block ~ ~ ~ minecraft:crimson_pressure_plate[powered=true] run function uhcp:lobby/item/knockback_stick/player
