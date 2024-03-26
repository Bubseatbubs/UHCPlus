# Set initialization status scoreboards
scoreboard players set %lava_secondary uhcp_initStatus 1
scoreboard players set %lava_secondary_init uhcp_initStatus 1

# Reset timer
scoreboard players set %lava_secondary uhcp_lava_time 70

# Set current height
scoreboard players operation %lava_secondary uhcp_lava_currentHeight = %lava uhcp_lava_currentHeight
scoreboard players remove %lava_secondary uhcp_lava_currentHeight 1

# Fill next lava layers
execute if score %lava_secondary uhcp_lava_currentHeight matches -63..0 run function uhcp:lava/replace/secondary/branches/1
execute if score %lava_secondary uhcp_lava_currentHeight matches 1..64 run function uhcp:lava/replace/secondary/branches/2
execute if score %lava_secondary uhcp_lava_currentHeight matches 65..128 run function uhcp:lava/replace/secondary/branches/3
execute if score %lava_secondary uhcp_lava_currentHeight matches 129..192 run function uhcp:lava/replace/secondary/branches/4
execute if score %lava_secondary uhcp_lava_currentHeight matches 193..256 run function uhcp:lava/replace/secondary/branches/5
execute if score %lava_secondary uhcp_lava_currentHeight matches 257..319 run function uhcp:lava/replace/secondary/branches/6
