# Raise height by 25 blocks
scoreboard players operation %lava uhcp_lava_height = %lava uhcp_lava_maxHeight
scoreboard players add %lava uhcp_lava_height 25
execute if score %lava uhcp_lava_height matches ..319 run function uhcp:settings/lava/height/check
execute if score %lava uhcp_lava_height matches 320.. run function uhcp:settings/lava/height/high
