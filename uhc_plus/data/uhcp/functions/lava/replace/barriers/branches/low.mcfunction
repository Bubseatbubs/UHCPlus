# [1..4]
execute if score %lava_barrier uhcp_lava_currentLayers matches 1 run return run function uhcp:lava/replace/barriers/fill/low/west
execute if score %lava_barrier uhcp_lava_currentLayers matches 2 run return run function uhcp:lava/replace/barriers/fill/low/east
execute if score %lava_barrier uhcp_lava_currentLayers matches 3 run return run function uhcp:lava/replace/barriers/fill/low/north
execute if score %lava_barrier uhcp_lava_currentLayers matches 4 run function uhcp:lava/replace/barriers/fill/low/south
