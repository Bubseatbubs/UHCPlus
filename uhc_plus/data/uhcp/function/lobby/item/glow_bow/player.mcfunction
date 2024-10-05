# Find nearest valid player
execute as @a[distance=..0.75,gamemode=!spectator,sort=nearest] align xz positioned ~ ~-0.75 ~ as @s[dy=0] run return run function uhcp:lobby/item/glow_bow
execute as @p[distance=..1.5,gamemode=!spectator] run return run function uhcp:lobby/item/glow_bow
scoreboard players set %lobby_item_1 uhcp_initStatus 1
