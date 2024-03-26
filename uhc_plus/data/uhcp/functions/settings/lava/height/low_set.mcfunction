# Set height to minimum if already started raising lava
scoreboard players operation %lava uhcp_initStatus = %lava uhcp_lavaCurrentHeight
scoreboard players add %lava uhcp_initStatus 1
scoreboard players operation %lava uhcp_lavaMaxHeight = %lava uhcp_initStatus
execute if score %lava uhcp_lavaMaxHeight matches 320.. run scoreboard players set %lava uhcp_lavaMaxHeight 319
