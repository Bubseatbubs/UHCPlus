# Start placing lava at top
scoreboard players operation %uhcp_lavaSec uhcp_lavaCurrentHeight = %lava uhcp_lavaCurrentHeight
scoreboard players remove %uhcp_lavaSec uhcp_lavaCurrentHeight 1

# Set initialization status
scoreboard players set %uhcp_lavaSec uhcp_initStatus 1
