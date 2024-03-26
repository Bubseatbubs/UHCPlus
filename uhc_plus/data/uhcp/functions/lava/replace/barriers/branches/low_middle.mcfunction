# [5..8]
execute if score %lava_barrier uhcp_lava_currentLayers matches 5 run function uhcp:lava/replace/barriers/fill/low_middle/west
execute if score %lava_barrier uhcp_lava_currentLayers matches 6 run function uhcp:lava/replace/barriers/fill/low_middle/east
execute if score %lava_barrier uhcp_lava_currentLayers matches 7 run function uhcp:lava/replace/barriers/fill/low_middle/north
execute if score %lava_barrier uhcp_lava_currentLayers matches 8 run function uhcp:lava/replace/barriers/fill/low_middle/south
