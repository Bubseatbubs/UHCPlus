# [1..4]
execute if score %lava_barrier uhcp_lavaCurrentLayers matches 1 run function uhcp:lava/replace/barriers/fill/low/west
execute if score %lava_barrier uhcp_lavaCurrentLayers matches 2 run function uhcp:lava/replace/barriers/fill/low/east
execute if score %lava_barrier uhcp_lavaCurrentLayers matches 3 run function uhcp:lava/replace/barriers/fill/low/north
execute if score %lava_barrier uhcp_lavaCurrentLayers matches 4 run function uhcp:lava/replace/barriers/fill/low/south
