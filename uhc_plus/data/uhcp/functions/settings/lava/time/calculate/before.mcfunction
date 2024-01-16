# Calculate time prior to lava rising
scoreboard players set %uhcp_lava uhcp_initStatus 64
scoreboard players operation %uhcp_lava uhcp_lavaHeight = %uhcp_lava uhcp_lavaMaxHeight
scoreboard players operation %uhcp_lava uhcp_lavaHeight += %uhcp_lava uhcp_initStatus
scoreboard players operation %uhcp_lava uhcp_initStatus = %uhcp_lava uhcp_lavaTime
scoreboard players operation %uhcp_lava uhcp_initStatus /= %uhcp_lava uhcp_lavaHeight
execute unless score %uhcp_lava uhcp_initStatus matches 40.. run function uhcp:lava/time
