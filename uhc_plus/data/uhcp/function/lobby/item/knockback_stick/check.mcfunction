# Check pressure plate
execute positioned ^40 ^10.5 ^55 if block ~ ~ ~ minecraft:crimson_pressure_plate[powered=true] run function uhcp:lobby/item/knockback_stick/player
