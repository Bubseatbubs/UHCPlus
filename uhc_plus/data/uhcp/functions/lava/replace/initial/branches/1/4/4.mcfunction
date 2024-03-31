# [-3..0]
execute if score %lava uhcp_lava_currentHeight matches -3 run return run function uhcp:lava/replace/initial/fill/-3
execute if score %lava uhcp_lava_currentHeight matches -2 run return run function uhcp:lava/replace/initial/fill/-2
execute if score %lava uhcp_lava_currentHeight matches -1 run return run function uhcp:lava/replace/initial/fill/-1
execute if score %lava uhcp_lava_currentHeight matches 0 run function uhcp:lava/replace/initial/fill/0
