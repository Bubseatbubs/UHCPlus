# Bound max height scoreboard
scoreboard players operation %uhcp_lava uhcp_initStatus = %uhcp_lava uhcp_lavaCurrentHeight
scoreboard players add %uhcp_lava uhcp_initStatus 1
execute unless score %uhcp_lava uhcp_lavaMaxHeight > %uhcp_lava uhcp_lavaCurrentHeight run scoreboard players operation %uhcp_lava uhcp_lavaMaxHeight = %uhcp_lava uhcp_initStatus
execute if score %uhcp_lava uhcp_lavaMaxHeight matches 320.. run scoreboard players set %uhcp_lava uhcp_lavaMaxHeight 319

# Increase lava time to at least 40 ticks per layer
execute unless score %uhcp_lava uhcp_lavaTime matches -2147483648..2147483647 run scoreboard players operation %uhcp_lava uhcp_lavaTime = %uhcp_lavaDef uhcp_lavaTime
scoreboard players operation %uhcp_lava uhcp_lavaHeight = %uhcp_lava uhcp_lavaMaxHeight
scoreboard players operation %uhcp_lava uhcp_lavaHeight -= %uhcp_lava uhcp_lavaCurrentHeight
scoreboard players operation %uhcp_lava uhcp_initStatus = %uhcp_lava uhcp_lavaTime
scoreboard players operation %uhcp_lava uhcp_initStatus /= %uhcp_lava uhcp_lavaHeight
execute unless score %uhcp_lava uhcp_initStatus matches 40.. run function uhcp:lava/time

# Calculate first initial lava interval length
scoreboard players operation %uhcp_lava uhcp_lavaTimeInterval = %uhcp_lava uhcp_lavaTime
scoreboard players operation %uhcp_lava uhcp_lavaTimeInterval /= %uhcp_lava uhcp_lavaHeight

# Set secondary lava scoreboards
scoreboard players set %uhcp_lavaSec uhcp_lavaTime 70
scoreboard players set %uhcp_lavaSecInit uhcp_initStatus 1
scoreboard players set %uhcp_lavaSec uhcp_initStatus 1

# Set barrier timer
execute if score %uhcp_lavaBar uhcp_lavaTime matches ..15 run scoreboard players set %uhcp_lavaBar uhcp_lavaTime 10

# Lava notification
tellraw @a [{"text":"Lava","color":"red"},{"text":" is rising!","color":"yellow"}]
execute as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1

# Start raising lava
scoreboard players set %uhcp_lavaStart uhcp_initStatus 1
scoreboard players set %lava_countdown uhcp_settings -2
