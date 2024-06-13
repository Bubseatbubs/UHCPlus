# [9..12]
execute if score %lava_barrier uhcp_lava_currentLayers matches 9 run return run function uhcp:lava/replace/barriers/fill/high_middle/west
execute if score %lava_barrier uhcp_lava_currentLayers matches 10 run return run function uhcp:lava/replace/barriers/fill/high_middle/east
execute if score %lava_barrier uhcp_lava_currentLayers matches 11 run return run function uhcp:lava/replace/barriers/fill/high_middle/north
execute if score %lava_barrier uhcp_lava_currentLayers matches 12 run function uhcp:lava/replace/barriers/fill/high_middle/south
