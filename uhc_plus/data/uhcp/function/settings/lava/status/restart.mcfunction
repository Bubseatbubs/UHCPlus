# Bound max height scoreboard
scoreboard players operation %lava uhcp_initStatus = %lava uhcp_lava_currentHeight
scoreboard players add %lava uhcp_initStatus 1
execute unless score %lava uhcp_lava_maxHeight > %lava uhcp_lava_currentHeight run scoreboard players operation %lava uhcp_lava_maxHeight = %lava uhcp_initStatus
execute if score %lava uhcp_lava_maxHeight matches 320.. run scoreboard players set %lava uhcp_lava_maxHeight 319

# Increase lava time to at least 40 ticks per layer
execute unless score %lava uhcp_lava_time = %lava uhcp_lava_time run scoreboard players operation %lava uhcp_lava_time = %lava_def uhcp_lava_time
scoreboard players operation %lava uhcp_lava_height = %lava uhcp_lava_maxHeight
scoreboard players operation %lava uhcp_lava_height -= %lava uhcp_lava_currentHeight
scoreboard players operation %lava uhcp_initStatus = %lava uhcp_lava_time
scoreboard players operation %lava uhcp_initStatus /= %lava uhcp_lava_height
execute unless score %lava uhcp_initStatus matches 40.. run function uhcp:lava/time

# Calculate first initial lava interval length
scoreboard players operation %lava uhcp_lava_timeInterval = %lava uhcp_lava_time
scoreboard players operation %lava uhcp_lava_timeInterval /= %lava uhcp_lava_height

# Set secondary lava scoreboards
scoreboard players set %lava_secondary uhcp_lava_time 70
scoreboard players set %lava_secondary_init uhcp_initStatus 1
scoreboard players set %lava_secondary uhcp_initStatus 1

# Set barrier timer
execute if score %lava_barrier uhcp_lava_time matches ..15 run scoreboard players set %lava_barrier uhcp_lava_time 10

# Lava notification
execute as @a at @s run playsound minecraft:block.lava.pop master @s ~ ~ ~ 1 1 1
execute as @a at @s run playsound minecraft:item.bucket.empty_lava master @s ~ ~ ~ 1 1 1

# Start raising lava
scoreboard players set %lava_start uhcp_initStatus 1
scoreboard players set %lava_countdown uhcp_settings -2
