# Bound max height scoreboard [-63..319]
execute unless score %lava uhcp_lavaMaxHeight matches -2147483648..2147483647 run scoreboard players operation %lava uhcp_lavaMaxHeight = %lava_def uhcp_lavaMaxHeight
execute if score %lava uhcp_lavaMaxHeight matches ..-64 run scoreboard players set %lava uhcp_lavaMaxHeight -63
execute if score %lava uhcp_lavaMaxHeight matches 320.. run scoreboard players set %lava uhcp_lavaMaxHeight 319

# Increase lava time to at least 40 ticks per layer
execute unless score %lava uhcp_lavaTime matches -2147483648..2147483647 run scoreboard players operation %lava uhcp_lavaTime = %lava_def uhcp_lavaTime
scoreboard players set %lava uhcp_initStatus 64
scoreboard players operation %lava uhcp_lavaHeight = %lava uhcp_lavaMaxHeight
scoreboard players operation %lava uhcp_lavaHeight += %lava uhcp_initStatus
scoreboard players operation %lava uhcp_initStatus = %lava uhcp_lavaTime
scoreboard players operation %lava uhcp_initStatus /= %lava uhcp_lavaHeight
execute unless score %lava uhcp_initStatus matches 40.. run function uhcp:lava/time

# Calculate first initial lava interval length
scoreboard players operation %lava uhcp_lavaTimeInterval = %lava uhcp_lavaTime
scoreboard players operation %lava uhcp_lavaTimeInterval /= %lava uhcp_lavaHeight

# Set secondary lava scoreboards
scoreboard players set %lava_secondary uhcp_lavaTime 70
scoreboard players set %lava_secondary_init uhcp_initStatus 0
scoreboard players set %lava_secondary uhcp_initStatus 1

# Set height scoreboards
scoreboard players set %lava uhcp_lavaCurrentHeight -64
scoreboard players set %lava uhcp_lavaCurrentLayers 0

# Replace bordering non-solid blocks with barriers
scoreboard players set %lava_barrier uhcp_lavaTime 10
scoreboard players set %lava_barrier uhcp_lavaCurrentLayers 0

# Set initilization status
scoreboard players set %lava_init uhcp_initStatus 1
scoreboard players set %lava_countdown uhcp_settings -2
