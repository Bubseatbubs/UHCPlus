# Raise layer to fill by one block (starts at y level -63)
scoreboard players add %lava uhcp_lavaCurrentHeight 1

# Calculate time interval
scoreboard players set %lava uhcp_initStatus 64
scoreboard players operation %lava uhcp_lavaHeight = %lava uhcp_lavaMaxHeight
scoreboard players operation %lava uhcp_lavaHeight += %lava uhcp_initStatus
scoreboard players operation %lava uhcp_lavaHeight -= %lava uhcp_lavaCurrentLayers
scoreboard players operation %lava uhcp_lavaTimeInterval = %lava uhcp_lavaTime
scoreboard players operation %lava uhcp_lavaTimeInterval /= %lava uhcp_lavaHeight

# Add to current number of filled layers
scoreboard players add %lava uhcp_lavaCurrentLayers 1

# Initialize secondary filling
execute if score %lava uhcp_lavaCurrentHeight matches -62.. run scoreboard players set %lava_secondary uhcp_initStatus 0

# Fill next lava layer
execute if score %lava uhcp_lavaCurrentHeight matches -63..0 run function uhcp:lava/replace/initial/branches/1
execute if score %lava uhcp_lavaCurrentHeight matches 1..64 run function uhcp:lava/replace/initial/branches/2
execute if score %lava uhcp_lavaCurrentHeight matches 65..128 run function uhcp:lava/replace/initial/branches/3
execute if score %lava uhcp_lavaCurrentHeight matches 129..192 run function uhcp:lava/replace/initial/branches/4
execute if score %lava uhcp_lavaCurrentHeight matches 193..256 run function uhcp:lava/replace/initial/branches/5
execute if score %lava uhcp_lavaCurrentHeight matches 257..319 run function uhcp:lava/replace/initial/branches/6

# Schedule falling block kill
schedule function uhcp:lava/falling_block 30t
