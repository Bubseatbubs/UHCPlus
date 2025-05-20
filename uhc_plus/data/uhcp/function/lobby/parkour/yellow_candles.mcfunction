# Switch to yellow candles
fill ^35 ^15 ^59 ^41 ^25 ^61 minecraft:yellow_candle replace minecraft:cave_air strict
fill ^35 ^15 ^59 ^41 ^25 ^61 minecraft:void_air replace minecraft:red_candle strict

execute positioned ^31 ^11 ^58 align xz run function uhcp:lobby/parkour/yellow_sound
