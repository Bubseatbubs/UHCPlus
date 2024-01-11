# Increase time to at least 5 ticks/layer
scoreboard players operation %uhcp_lava uhcp_lavaTime = %uhcp_lava uhcp_lavaHeight
scoreboard players set %uhcp_lava uhcp_initStatus 5
scoreboard players operation %uhcp_lava uhcp_lavaTime *= %uhcp_lava uhcp_initStatus
