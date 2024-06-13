# Set height to minimum if already started raising lava
scoreboard players operation %lava uhcp_initStatus = %lava uhcp_lava_currentHeight
scoreboard players add %lava uhcp_initStatus 1
scoreboard players operation %lava uhcp_lava_maxHeight = %lava uhcp_initStatus
execute if score %lava uhcp_lava_maxHeight matches 320.. run scoreboard players set %lava uhcp_lava_maxHeight 319
