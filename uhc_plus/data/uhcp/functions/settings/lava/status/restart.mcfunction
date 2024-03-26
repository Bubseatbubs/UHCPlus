# Bound max height scoreboard
scoreboard players operation %lava uhcp_initStatus = %lava uhcp_lavaCurrentHeight
scoreboard players add %lava uhcp_initStatus 1
execute unless score %lava uhcp_lavaMaxHeight > %lava uhcp_lavaCurrentHeight run scoreboard players operation %lava uhcp_lavaMaxHeight = %lava uhcp_initStatus
execute if score %lava uhcp_lavaMaxHeight matches 320.. run scoreboard players set %lava uhcp_lavaMaxHeight 319

# Increase lava time to at least 40 ticks per layer
execute unless score %lava uhcp_lavaTime matches -2147483648..2147483647 run scoreboard players operation %lava uhcp_lavaTime = %lava_def uhcp_lavaTime
scoreboard players operation %lava uhcp_lavaHeight = %lava uhcp_lavaMaxHeight
scoreboard players operation %lava uhcp_lavaHeight -= %lava uhcp_lavaCurrentHeight
scoreboard players operation %lava uhcp_initStatus = %lava uhcp_lavaTime
scoreboard players operation %lava uhcp_initStatus /= %lava uhcp_lavaHeight
execute unless score %lava uhcp_initStatus matches 40.. run function uhcp:lava/time

# Calculate first initial lava interval length
scoreboard players operation %lava uhcp_lavaTimeInterval = %lava uhcp_lavaTime
scoreboard players operation %lava uhcp_lavaTimeInterval /= %lava uhcp_lavaHeight

# Set secondary lava scoreboards
scoreboard players set %uhcp_lavaSec uhcp_lavaTime 70
scoreboard players set %uhcp_lavaSecInit uhcp_initStatus 1
scoreboard players set %uhcp_lavaSec uhcp_initStatus 1

# Set barrier timer
execute if score %uhcp_lavaBar uhcp_lavaTime matches ..15 run scoreboard players set %uhcp_lavaBar uhcp_lavaTime 10

# Lava notification
execute as @a at @s run playsound block.lava.pop master @s ~ ~ ~ 1 1 1
execute as @a at @s run playsound item.bucket.empty_lava master @s ~ ~ ~ 1 1 1

# Start raising lava
scoreboard players set %lava_start uhcp_initStatus 1
scoreboard players set %lava_countdown uhcp_settings -2
