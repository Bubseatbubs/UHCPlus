# Move player to lobby
clear @s
effect clear @s
effect give @s minecraft:instant_health 2 5 true
effect give @s minecraft:resistance infinite 5 true
effect give @s minecraft:saturation infinite 255 true
# --------------- Temp coordinates to lobby
execute in minecraft:overworld run tp @s 7 301 7
# ---------------
gamemode adventure @s
scoreboard players reset @s top
