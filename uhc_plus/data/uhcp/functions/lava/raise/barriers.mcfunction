# Add to current layers
scoreboard players add %lava_barrier uhcp_lava_currentLayers 1

# Reset timer
scoreboard players set %lava_barrier uhcp_lava_time 30

# Fill next barrier layer
execute if score %lava_barrier uhcp_lava_currentLayers matches 1..4 run return run function uhcp:lava/replace/barriers/branches/low
execute if score %lava_barrier uhcp_lava_currentLayers matches 5..8 run return run function uhcp:lava/replace/barriers/branches/low_middle
execute if score %lava_barrier uhcp_lava_currentLayers matches 9..12 run return run function uhcp:lava/replace/barriers/branches/high_middle
execute if score %lava_barrier uhcp_lava_currentLayers matches 13..16 run function uhcp:lava/replace/barriers/branches/high
