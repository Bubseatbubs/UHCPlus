# Check for fluids
execute if block 0 62 0 minecraft:water run return run function uhcp:start/spreadplayers/initial/water
execute if block 0 62 0 minecraft:lava run return run function uhcp:start/spreadplayers/initial/lava
execute if block 0 62 0 #minecraft:air run return run function uhcp:start/spreadplayers/initial/air
execute if block 0 -50 0 minecraft:lava run return run function uhcp:start/spreadplayers/initial/lava
execute if block 0 55 0 minecraft:water run return run function uhcp:start/spreadplayers/initial/water
execute as @a[tag=!UHCP_Spectator] run function uhcp:start/spreadplayers/initial/translation/position
execute as @a[tag=!UHCP_Spectator] at @s run tp @s ~ 64 ~
