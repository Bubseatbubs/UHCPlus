# Raise layer to fill by one block (starts at y level -63)
scoreboard players add %uhcp_lava uhcp_lavaCurrentHeight 1

# Calculations
scoreboard players set %uhcp_lava uhcp_initStatus 64
scoreboard players operation %uhcp_lava uhcp_lavaHeight = %uhcp_lava uhcp_lavaMaxHeight
scoreboard players operation %uhcp_lava uhcp_lavaHeight += %uhcp_lava uhcp_initStatus
scoreboard players operation %uhcp_lava uhcp_lavaHeight -= %uhcp_lava uhcp_lavaCurrentLayers
scoreboard players operation %uhcp_lava uhcp_lavaTimeInterval = %uhcp_lava uhcp_lavaTime
scoreboard players operation %uhcp_lava uhcp_lavaTimeInterval /= %uhcp_lava uhcp_lavaHeight

# Add to current number of filled layers
scoreboard players add %uhcp_lava uhcp_lavaCurrentLayers 1

# Initialize secondary filling
execute if score %uhcp_lava uhcp_lavaCurrentHeight matches -62.. run scoreboard players set %uhcp_lavaSec uhcp_initStatus 0
execute if score %uhcp_lavaSec uhcp_lavaTime matches ..-1 run scoreboard players set %uhcp_lavaSec uhcp_lavaTime 140

# Fill next lava layer
execute if score %uhcp_lava uhcp_lavaCurrentHeight matches -63..0 run function uhcp:lava/replace/initial/branches/1
execute if score %uhcp_lava uhcp_lavaCurrentHeight matches 1..64 run function uhcp:lava/replace/initial/branches/2
execute if score %uhcp_lava uhcp_lavaCurrentHeight matches 65..128 run function uhcp:lava/replace/initial/branches/3
execute if score %uhcp_lava uhcp_lavaCurrentHeight matches 129..192 run function uhcp:lava/replace/initial/branches/4
execute if score %uhcp_lava uhcp_lavaCurrentHeight matches 193..256 run function uhcp:lava/replace/initial/branches/5
execute if score %uhcp_lava uhcp_lavaCurrentHeight matches 257..320 run function uhcp:lava/replace/initial/branches/6

# Schedule falling block kill
schedule function uhcp:lava/falling_block 30t
