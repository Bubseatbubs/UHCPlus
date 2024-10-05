# Find nearest valid player
execute as @a[distance=..0.75,gamemode=!spectator,sort=nearest] align xz positioned ~ ~-0.75 ~ as @s[dy=0] run return run function uhcp:lobby/effect/speed
execute as @p[distance=..1.5,gamemode=!spectator] run return run function uhcp:lobby/effect/speed
scoreboard players set %lobby_speed uhcp_initStatus 1
