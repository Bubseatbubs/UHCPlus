#Stop

#Save progress
bossbar remove pregen:worldgen
scoreboard players remove @s[tag=WorldGen] WorldPregen 1
execute as @s[tag=WorldGen] if score Dimension WorldPregen matches 0 run scoreboard players operation Overworld WorldPregen = @s WorldPregen
execute as @s[tag=WorldGen] if score Dimension WorldPregen matches -1 run scoreboard players operation Nether WorldPregen = @s WorldPregen
execute as @s[tag=WorldGen] if score Dimension WorldPregen matches 1 run scoreboard players operation End WorldPregen = @s WorldPregen

#Return to Spawn
# ------------ UHC Plus commands
execute if predicate uhcp:dimensions/minecraft/overworld in minecraft:overworld run gamerule doMobSpawning false
execute if predicate uhcp:dimensions/minecraft/the_end in minecraft:the_end run gamerule doMobSpawning false
execute if predicate uhcp:dimensions/minecraft/the_nether in minecraft:the_nether run gamerule doMobSpawning false
execute in minecraft:overworld run forceload add -80 -80 79 79
execute at @e[tag=UHCP_LobbyOrigin,limit=1] align y positioned ^29.5 ^16 ^31 run spreadplayers ~ ~ 0 1.5 under 299 false @s
execute in minecraft:overworld run forceload remove -80 -80 79 79
gamemode adventure @s
# ------------
#gamemode creative @s
tag @s remove WorldGen
tag @s remove WorldGenStop
tag @s remove WorldGenVerify
