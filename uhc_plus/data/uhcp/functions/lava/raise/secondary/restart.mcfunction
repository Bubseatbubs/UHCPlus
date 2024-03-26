# Start placing lava at top
scoreboard players operation %lava_secondary uhcp_lavaCurrentHeight = %lava uhcp_lavaCurrentHeight
scoreboard players remove %lava_secondary uhcp_lavaCurrentHeight 1

# Set initialization status
scoreboard players set %lava_secondary uhcp_initStatus 1
