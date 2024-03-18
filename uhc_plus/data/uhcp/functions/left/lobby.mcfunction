# Move player to lobby
effect clear @s
effect give @s minecraft:night_vision infinite 0 true
# --------------- Temp coordinates
execute in minecraft:overworld run tp @s 8 301 8
# ---------------
gamemode adventure @s
