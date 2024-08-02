# [-3..0]
execute if score %lava uhcp_lava_currentHeight matches -3 run return run function uhcp:lava/replace/top/fill/-3
execute if score %lava uhcp_lava_currentHeight matches -2 run return run function uhcp:lava/replace/top/fill/-2
execute if score %lava uhcp_lava_currentHeight matches -1 run return run function uhcp:lava/replace/top/fill/-1
execute if score %lava uhcp_lava_currentHeight matches 0 run function uhcp:lava/replace/top/fill/0
