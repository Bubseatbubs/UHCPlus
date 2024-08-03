# Fill top layers after lava has finished rising
execute unless score %lava uhcp_lava_currentHeight >= %lava uhcp_lava_maxHeight if score %lava uhcp_lava_timeInterval matches ..75 run return fail
scoreboard players set %lava_top uhcp_lava_time 75

execute if score %lava uhcp_lava_currentHeight matches -63..0 run return run function uhcp:lava/replace/top/branches/1
execute if score %lava uhcp_lava_currentHeight matches 1..64 run return run function uhcp:lava/replace/top/branches/2
execute if score %lava uhcp_lava_currentHeight matches 65..128 run return run function uhcp:lava/replace/top/branches/3
execute if score %lava uhcp_lava_currentHeight matches 129..192 run return run function uhcp:lava/replace/top/branches/4
execute if score %lava uhcp_lava_currentHeight matches 193..256 run return run function uhcp:lava/replace/top/branches/5
execute if score %lava uhcp_lava_currentHeight matches 257..319 run function uhcp:lava/replace/top/branches/6
