# Increase time to minimum per layer
scoreboard players operation %lava uhcp_lava_time = %lava uhcp_lava_height
scoreboard players set %lava uhcp_initStatus 40
scoreboard players operation %lava uhcp_lava_time *= %lava uhcp_initStatus
