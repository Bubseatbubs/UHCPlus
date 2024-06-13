# [1..16]
execute if score %lava uhcp_lava_currentHeight matches 1..4 run return run function uhcp:lava/replace/initial/branches/2/1/1
execute if score %lava uhcp_lava_currentHeight matches 5..8 run return run function uhcp:lava/replace/initial/branches/2/1/2
execute if score %lava uhcp_lava_currentHeight matches 9..12 run return run function uhcp:lava/replace/initial/branches/2/1/3
execute if score %lava uhcp_lava_currentHeight matches 13..16 run function uhcp:lava/replace/initial/branches/2/1/4
