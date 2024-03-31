# [65..128]
execute if score %lava uhcp_lava_currentHeight matches 65..80 run return run function uhcp:lava/replace/initial/branches/3/1
execute if score %lava uhcp_lava_currentHeight matches 81..96 run return run function uhcp:lava/replace/initial/branches/3/2
execute if score %lava uhcp_lava_currentHeight matches 97..112 run return run function uhcp:lava/replace/initial/branches/3/3
execute if score %lava uhcp_lava_currentHeight matches 113..128 run function uhcp:lava/replace/initial/branches/3/4
