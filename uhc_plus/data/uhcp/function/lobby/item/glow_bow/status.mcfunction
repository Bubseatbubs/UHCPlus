# Determine status of pressure plate
execute unless score %lobby_item_1 uhcp_initStatus matches 1 run return run function uhcp:lobby/item/glow_bow/check
execute unless block ^30 ^28 ^30 minecraft:warped_pressure_plate[powered=true] run scoreboard players set %lobby_item_1 uhcp_initStatus 0
