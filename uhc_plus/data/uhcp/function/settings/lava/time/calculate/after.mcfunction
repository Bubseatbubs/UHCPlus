# Calculate time after lava has risen
scoreboard players operation %lava uhcp_lava_height = %lava uhcp_lava_maxHeight
scoreboard players operation %lava uhcp_lava_height -= %lava uhcp_lava_currentHeight
scoreboard players operation %lava uhcp_initStatus = %lava uhcp_lava_time
scoreboard players operation %lava uhcp_initStatus /= %lava uhcp_lava_height
execute unless score %lava uhcp_initStatus matches 40.. run function uhcp:lava/time
