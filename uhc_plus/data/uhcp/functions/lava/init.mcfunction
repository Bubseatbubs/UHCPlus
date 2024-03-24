# Bound max height scoreboard [-63..319]
execute unless score %uhcp_lava uhcp_lavaMaxHeight matches -2147483648..2147483647 run scoreboard players operation %uhcp_lava uhcp_lavaMaxHeight = %uhcp_lavaDef uhcp_lavaMaxHeight
execute if score %uhcp_lava uhcp_lavaMaxHeight matches ..-64 run scoreboard players set %uhcp_lava uhcp_lavaMaxHeight -63
execute if score %uhcp_lava uhcp_lavaMaxHeight matches 320.. run scoreboard players set %uhcp_lava uhcp_lavaMaxHeight 319

# Increase lava time to at least 40 ticks per layer
execute unless score %uhcp_lava uhcp_lavaTime matches -2147483648..2147483647 run scoreboard players operation %uhcp_lava uhcp_lavaTime = %uhcp_lavaDef uhcp_lavaTime
scoreboard players set %uhcp_lava uhcp_initStatus 64
scoreboard players operation %uhcp_lava uhcp_lavaHeight = %uhcp_lava uhcp_lavaMaxHeight
scoreboard players operation %uhcp_lava uhcp_lavaHeight += %uhcp_lava uhcp_initStatus
scoreboard players operation %uhcp_lava uhcp_initStatus = %uhcp_lava uhcp_lavaTime
scoreboard players operation %uhcp_lava uhcp_initStatus /= %uhcp_lava uhcp_lavaHeight
execute unless score %uhcp_lava uhcp_initStatus matches 40.. run function uhcp:lava/time

# Calculate first initial lava interval length
scoreboard players operation %uhcp_lava uhcp_lavaTimeInterval = %uhcp_lava uhcp_lavaTime
scoreboard players operation %uhcp_lava uhcp_lavaTimeInterval /= %uhcp_lava uhcp_lavaHeight

# Set secondary lava scoreboards
scoreboard players set %uhcp_lavaSec uhcp_lavaTime 70
scoreboard players set %uhcp_lavaSecInit uhcp_initStatus 0
scoreboard players set %uhcp_lavaSec uhcp_initStatus 1

# Set height scoreboards
scoreboard players set %uhcp_lava uhcp_lavaCurrentHeight -64
scoreboard players set %uhcp_lava uhcp_lavaCurrentLayers 0

# Replace bordering non-solid blocks with barriers
scoreboard players set %uhcp_lavaBar uhcp_lavaTime 10
scoreboard players set %uhcp_lavaBar uhcp_lavaCurrentLayers 0

# Lava notification
tellraw @a [{"text":"Lava","color":"dark_red","bold":true},{"text":" is rising to y-level ","color":"#E34400","bold":false},{"score":{"name":"%uhcp_lava","objective":"uhcp_lavaMaxHeight"},"color":"#9EE8FF","bold":false},{"text":"!","color":"#E34400","bold":false}]
execute as @a at @s run playsound item.bucket.empty_lava master @s ~ ~ ~ 1 1 1
execute as @a at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1

# Set initilization status
scoreboard players set %uhcp_lavaInit uhcp_initStatus 1
scoreboard players set %lava_countdown uhcp_settings -2
