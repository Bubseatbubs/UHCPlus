# [1..4]
execute if score %lava_secondary uhcp_lava_currentHeight matches 1 run return run function uhcp:lava/replace/secondary/fill/1
execute if score %lava_secondary uhcp_lava_currentHeight matches 2 run return run function uhcp:lava/replace/secondary/fill/2
execute if score %lava_secondary uhcp_lava_currentHeight matches 3 run return run function uhcp:lava/replace/secondary/fill/3
execute if score %lava_secondary uhcp_lava_currentHeight matches 4 run function uhcp:lava/replace/secondary/fill/4
