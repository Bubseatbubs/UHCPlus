# Raise layer to fill by one block (starts at y level -63)
scoreboard players add %lava uhcp_lava_currentHeight 1

# Calculate time interval
scoreboard players set %lava uhcp_initStatus 64
scoreboard players operation %lava uhcp_lava_height = %lava uhcp_lava_maxHeight
scoreboard players operation %lava uhcp_lava_height += %lava uhcp_initStatus
scoreboard players operation %lava uhcp_lava_height -= %lava uhcp_lava_currentLayers
scoreboard players operation %lava uhcp_lava_timeInterval = %lava uhcp_lava_time
scoreboard players operation %lava uhcp_lava_timeInterval /= %lava uhcp_lava_height

# Add to current number of filled layers
scoreboard players add %lava uhcp_lava_currentLayers 1

# Initialize secondary filling
execute if score %lava uhcp_lava_currentHeight matches -62.. run scoreboard players set %lava_secondary uhcp_initStatus 0

# Schedule falling block kill
schedule function uhcp:lava/falling_block 30t

# Fill next lava layer
execute if score %lava uhcp_lava_currentHeight matches -63..0 run return run function uhcp:lava/replace/initial/branches/1
execute if score %lava uhcp_lava_currentHeight matches 1..64 run return run function uhcp:lava/replace/initial/branches/2
execute if score %lava uhcp_lava_currentHeight matches 65..128 run return run function uhcp:lava/replace/initial/branches/3
execute if score %lava uhcp_lava_currentHeight matches 129..192 run return run function uhcp:lava/replace/initial/branches/4
execute if score %lava uhcp_lava_currentHeight matches 193..256 run return run function uhcp:lava/replace/initial/branches/5
execute if score %lava uhcp_lava_currentHeight matches 257..319 run function uhcp:lava/replace/initial/branches/6
