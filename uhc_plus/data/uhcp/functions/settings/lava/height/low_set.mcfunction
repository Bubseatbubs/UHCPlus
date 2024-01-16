# Set height to minimum if already started raising lava
scoreboard players operation %uhcp_lava uhcp_initStatus = %uhcp_lava uhcp_lavaCurrentHeight
scoreboard players add %uhcp_lava uhcp_initStatus 1
scoreboard players operation %uhcp_lava uhcp_lavaMaxHeight = %uhcp_lava uhcp_initStatus
execute if score %uhcp_lava uhcp_lavaMaxHeight matches 321.. run scoreboard players set %uhcp_lava uhcp_lavaMaxHeight 320
