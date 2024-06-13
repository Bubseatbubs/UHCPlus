# Calculate time prior to lava rising
scoreboard players set %lava uhcp_initStatus 64
scoreboard players operation %lava uhcp_lava_height = %lava uhcp_lava_maxHeight
scoreboard players operation %lava uhcp_lava_height += %lava uhcp_initStatus
scoreboard players operation %lava uhcp_initStatus = %lava uhcp_lava_time
scoreboard players operation %lava uhcp_initStatus /= %lava uhcp_lava_height
execute unless score %lava uhcp_initStatus matches 40.. run function uhcp:lava/time
