# Raise height by 5 blocks
scoreboard players operation %lava uhcp_lavaHeight = %lava uhcp_lavaMaxHeight
scoreboard players add %lava uhcp_lavaHeight 5
execute if score %lava uhcp_lavaHeight matches ..319 run function uhcp:settings/lava/height/check
execute if score %lava uhcp_lavaHeight matches 320.. run function uhcp:settings/lava/height/high
