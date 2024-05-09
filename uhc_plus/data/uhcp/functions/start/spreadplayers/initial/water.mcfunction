# Water at (0, 62, 0)
execute as @a[tag=!UHCP_Spectator] run function uhcp:start/spreadplayers/initial/water/position

# Water at (0, 63, 0)
execute unless block 0 63 0 minecraft:water run return run execute as @a[tag=!UHCP_Spectator] at @s run tp @s ~ 64 ~
execute as @a[tag=!UHCP_Spectator] at @s run tp @s ~ 300 ~
