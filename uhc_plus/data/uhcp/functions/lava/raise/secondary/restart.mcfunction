# Start placing lava at top
scoreboard players operation %lava_secondary uhcp_lava_currentHeight = %lava uhcp_lava_currentHeight
scoreboard players remove %lava_secondary uhcp_lava_currentHeight 1

# Set initialization status
scoreboard players set %lava_secondary uhcp_initStatus 1
