# Check pressure plate
execute positioned ^55 ^15.5 ^48 if block ~ ~ ~ minecraft:crimson_pressure_plate[powered=true] run function uhcp:lobby/effect/speed/player
