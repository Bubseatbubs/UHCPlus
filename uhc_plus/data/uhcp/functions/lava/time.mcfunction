# Increase time to minimum per layer
scoreboard players operation %lava uhcp_lavaTime = %lava uhcp_lavaHeight
scoreboard players set %lava uhcp_initStatus 40
scoreboard players operation %lava uhcp_lavaTime *= %lava uhcp_initStatus
