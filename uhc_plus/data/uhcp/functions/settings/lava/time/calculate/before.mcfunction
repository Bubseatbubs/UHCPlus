# Calculate time prior to lava rising
scoreboard players set %lava uhcp_initStatus 64
scoreboard players operation %lava uhcp_lavaHeight = %lava uhcp_lavaMaxHeight
scoreboard players operation %lava uhcp_lavaHeight += %lava uhcp_initStatus
scoreboard players operation %lava uhcp_initStatus = %lava uhcp_lavaTime
scoreboard players operation %lava uhcp_initStatus /= %lava uhcp_lavaHeight
execute unless score %lava uhcp_initStatus matches 40.. run function uhcp:lava/time
