# Water at (0, 62, 0)
execute as @a[tag=!UHCP_Spectator] run function uhcp:start/spreadplayers/initial/translation/position

# Water at (0, 63, 0)
execute unless block 0 63 0 minecraft:water as @a[tag=!UHCP_Spectator] at @s run return run tp @s ~ 64 ~
execute as @a[tag=!UHCP_Spectator] at @s run tp @s ~ 300 ~
