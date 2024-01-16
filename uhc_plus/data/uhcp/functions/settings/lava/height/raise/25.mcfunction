# Raise height by 25 blocks
scoreboard players operation %uhcp_lava uhcp_lavaHeight = %uhcp_lava uhcp_lavaMaxHeight
scoreboard players add %uhcp_lava uhcp_lavaHeight 25
execute if score %uhcp_lava uhcp_lavaHeight matches ..319 run function uhcp:settings/lava/height/check
execute if score %uhcp_lava uhcp_lavaHeight matches 320.. run function uhcp:settings/lava/height/high
