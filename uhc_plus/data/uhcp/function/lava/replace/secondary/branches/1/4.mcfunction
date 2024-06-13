# [-15..0]
execute if score %lava_secondary uhcp_lava_currentHeight matches -15..-12 run return run function uhcp:lava/replace/secondary/branches/1/4/1
execute if score %lava_secondary uhcp_lava_currentHeight matches -11..-8 run return run function uhcp:lava/replace/secondary/branches/1/4/2
execute if score %lava_secondary uhcp_lava_currentHeight matches -7..-4 run return run function uhcp:lava/replace/secondary/branches/1/4/3
execute if score %lava_secondary uhcp_lava_currentHeight matches -3..0 run function uhcp:lava/replace/secondary/branches/1/4/4
