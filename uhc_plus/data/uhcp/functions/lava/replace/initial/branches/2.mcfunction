# [1..64]
execute if score %lava uhcp_lava_currentHeight matches 1..16 run return run function uhcp:lava/replace/initial/branches/2/1
execute if score %lava uhcp_lava_currentHeight matches 17..32 run return run function uhcp:lava/replace/initial/branches/2/2
execute if score %lava uhcp_lava_currentHeight matches 33..48 run return run function uhcp:lava/replace/initial/branches/2/3
execute if score %lava uhcp_lava_currentHeight matches 49..64 run function uhcp:lava/replace/initial/branches/2/4
