# Determine status of pressure plate
execute unless score %lobby_speed uhcp_initStatus matches 1 run return run function uhcp:lobby/effect/speed/check
execute at @e[tag=UHCP_LobbyOrigin] unless block ^55 ^16 ^48 minecraft:crimson_pressure_plate[powered=true] run scoreboard players set %lobby_speed uhcp_initStatus 0
