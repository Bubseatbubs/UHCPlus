# Bound max height scoreboard [-63..319]
execute unless score %lava uhcp_lava_maxHeight = %lava uhcp_lava_maxHeight run scoreboard players operation %lava uhcp_lava_maxHeight = %lava_def uhcp_lava_maxHeight
execute if score %lava uhcp_lava_maxHeight matches ..-64 run scoreboard players set %lava uhcp_lava_maxHeight -63
execute if score %lava uhcp_lava_maxHeight matches 320.. run scoreboard players set %lava uhcp_lava_maxHeight 319

# Increase lava time to at least 40 ticks per layer
execute unless score %lava uhcp_lava_time = %lava uhcp_lava_time run scoreboard players operation %lava uhcp_lava_time = %lava_def uhcp_lava_time
scoreboard players set %lava uhcp_initStatus 64
scoreboard players operation %lava uhcp_lava_height = %lava uhcp_lava_maxHeight
scoreboard players operation %lava uhcp_lava_height += %lava uhcp_initStatus
scoreboard players operation %lava uhcp_initStatus = %lava uhcp_lava_time
scoreboard players operation %lava uhcp_initStatus /= %lava uhcp_lava_height
execute unless score %lava uhcp_initStatus matches 40.. run function uhcp:lava/time

# Calculate first initial lava interval length
scoreboard players operation %lava uhcp_lava_timeInterval = %lava uhcp_lava_time
scoreboard players operation %lava uhcp_lava_timeInterval /= %lava uhcp_lava_height

# Set secondary lava scoreboards
scoreboard players set %lava_secondary uhcp_lava_time 70
scoreboard players set %lava_secondary_init uhcp_initStatus 0
scoreboard players set %lava_secondary uhcp_initStatus 1

# Set height scoreboards
scoreboard players set %lava uhcp_lava_currentHeight -64
scoreboard players set %lava uhcp_lava_currentLayers 0
scoreboard players display name %lava_height uhcp_game_display {"text":"Lava Height:","color":"gold"}
function uhcp:display/lava

# Replace bordering non-solid blocks with barriers
scoreboard players set %lava_barrier uhcp_lava_time 10
scoreboard players set %lava_barrier uhcp_lava_currentLayers 0

# Set initilization status
scoreboard players set %lava_init uhcp_initStatus 1
scoreboard players set %lava_countdown uhcp_settings -2
