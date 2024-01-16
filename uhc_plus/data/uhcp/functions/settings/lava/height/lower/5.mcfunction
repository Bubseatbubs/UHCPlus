# Lower height by 5 blocks
scoreboard players operation %uhcp_lava uhcp_lavaHeight = %uhcp_lava uhcp_lavaMaxHeight
scoreboard players remove %uhcp_lava uhcp_lavaHeight 5
execute if score %uhcp_lava uhcp_lavaHeight matches -63.. run function uhcp:settings/lava/height/check
execute if score %uhcp_lava uhcp_lavaHeight matches ..-64 run function uhcp:settings/lava/height/low
