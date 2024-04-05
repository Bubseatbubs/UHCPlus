# Check for fluid
execute if block 0 62 0 minecraft:water unless block 0 63 0 minecraft:water run return run function uhcp:start/spreadplayers/initial/water
execute if block 0 62 0 minecraft:lava run return run function uhcp:start/spreadplayers/initial/lava
execute if block 0 62 0 #uhcp:air run function uhcp:start/spreadplayers/initial/air
