execute if score %uhcp_lavaStart uhcp_initStatus = %uhcp_lavaStart uhcp_initStatus run scoreboard players set %uhcp_lavaStart uhcp_initStatus 0
execute if score %uhcp_lavaStart uhcp_initStatus matches 0 run function uhcp:settings/pages/lava/stopped
execute if score %uhcp_lavaStart uhcp_initStatus matches 1 run function uhcp:settings/pages/lava/started
