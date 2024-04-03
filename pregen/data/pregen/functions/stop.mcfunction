#Stop

#Save progress
bossbar remove pregen:worldgen
scoreboard players remove @s[tag=WorldGen] WorldPregen 1
execute as @s[tag=WorldGen] if score Dimension WorldPregen matches 0 run scoreboard players operation Overworld WorldPregen = @s WorldPregen
execute as @s[tag=WorldGen] if score Dimension WorldPregen matches -1 run scoreboard players operation Nether WorldPregen = @s WorldPregen
execute as @s[tag=WorldGen] if score Dimension WorldPregen matches 1 run scoreboard players operation End WorldPregen = @s WorldPregen

#Return to Spawn
# --------------- Temp coordinates to lobby
execute in minecraft:overworld run tp @s 7 301 7
# ---------------
gamemode creative @s
tag @s remove WorldGen
tag @s remove WorldGenStop
tag @s remove WorldGenVerify
