# Restart if initialized
execute if score %lava_init uhcp_initStatus matches 1 run return run function uhcp:settings/lava/status/restart

# Start raising lava
scoreboard players set %lava_start uhcp_initStatus 1
scoreboard players set %lava_countdown uhcp_settings -2
