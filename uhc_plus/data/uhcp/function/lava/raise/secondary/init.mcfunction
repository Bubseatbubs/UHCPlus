# Set initialization status scoreboards
scoreboard players set %lava_secondary uhcp_initStatus 1
scoreboard players set %lava_secondary_init uhcp_initStatus 1

# Reset timer
scoreboard players set %lava_secondary uhcp_lava_time 70

# Set current height
scoreboard players operation %lava_secondary uhcp_lava_currentHeight = %lava uhcp_lava_currentHeight
scoreboard players remove %lava_secondary uhcp_lava_currentHeight 1

# Fill next lava layers
function uhcp:lava/raise/secondary/fill
