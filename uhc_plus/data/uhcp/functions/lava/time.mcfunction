# Increase time to minimum per layer
scoreboard players operation %uhcp_lava uhcp_lavaTime = %uhcp_lava uhcp_lavaHeight
scoreboard players set %uhcp_lava uhcp_initStatus 40
scoreboard players operation %uhcp_lava uhcp_lavaTime *= %uhcp_lava uhcp_initStatus
