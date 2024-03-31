# [13..16]
execute if score %lava_barrier uhcp_lava_currentLayers matches 13 run return run function uhcp:lava/replace/barriers/fill/high/west
execute if score %lava_barrier uhcp_lava_currentLayers matches 14 run return run function uhcp:lava/replace/barriers/fill/high/east
execute if score %lava_barrier uhcp_lava_currentLayers matches 15 run return run function uhcp:lava/replace/barriers/fill/high/north
execute if score %lava_barrier uhcp_lava_currentLayers matches 16 run function uhcp:lava/replace/barriers/fill/high/south
