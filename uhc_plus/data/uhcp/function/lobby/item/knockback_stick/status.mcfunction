# Determine status of pressure plate
execute unless score %lobby_item_6 uhcp_initStatus matches 1 run return run function uhcp:lobby/item/knockback_stick/check
execute at @e[tag=UHCP_LobbyOrigin] unless block ^40 ^11 ^55 minecraft:crimson_pressure_plate[powered=true] run scoreboard players set %lobby_item_6 uhcp_initStatus 0
