# Set initialize scoreboard
scoreboard players set %uhcp_init uhcp_initStatus 1

# Convert lava time into ticks
scoreboard players set %uhcp_lava uhcp_initStatus 1200
scoreboard players operation %uhcp_lava uhcp_lavaTime *= %uhcp_lava uhcp_initStatus

# Calculate first lava interval length
scoreboard players set %uhcp_lava uhcp_initStatus 65
scoreboard players operation %uhcp_lava uhcp_lavaHeight = %uhcp_lava uhcp_lavaMaxHeight
scoreboard players operation %uhcp_lava uhcp_lavaHeight += %uhcp_lava uhcp_initStatus
scoreboard players set %uhcp_lava uhcp_lavaCurrentLayers 1
scoreboard players operation %uhcp_lava uhcp_lavaHeight -= %uhcp_lava uhcp_lavaCurrentLayers
scoreboard players operation %uhcp_lava uhcp_lavaTimeInterval = %uhcp_lava uhcp_lavaTime
scoreboard players operation %uhcp_lava uhcp_lavaTimeInterval /= %uhcp_lava uhcp_lavaHeight
scoreboard players set %uhcp_lava uhcp_lavaCurrentHeight -64
