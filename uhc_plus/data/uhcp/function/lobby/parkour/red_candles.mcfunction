# Switch to red candles
fill ^35 ^15 ^59 ^41 ^25 ^61 minecraft:red_candle replace minecraft:void_air strict
fill ^35 ^15 ^59 ^41 ^25 ^61 minecraft:cave_air replace minecraft:yellow_candle strict

execute positioned ^31 ^11 ^58 align xz run function uhcp:lobby/parkour/red_sound
scoreboard players set %lobby_parkour uhcp_game_time 40
