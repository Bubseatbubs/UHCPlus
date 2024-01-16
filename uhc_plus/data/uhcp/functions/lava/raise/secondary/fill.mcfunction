# Fill next lava layers
execute if score %uhcp_lavaSec uhcp_lavaCurrentHeight matches -63..0 run function uhcp:lava/replace/secondary/branches/1
execute if score %uhcp_lavaSec uhcp_lavaCurrentHeight matches 1..64 run function uhcp:lava/replace/secondary/branches/2
execute if score %uhcp_lavaSec uhcp_lavaCurrentHeight matches 65..128 run function uhcp:lava/replace/secondary/branches/3
execute if score %uhcp_lavaSec uhcp_lavaCurrentHeight matches 129..192 run function uhcp:lava/replace/secondary/branches/4
execute if score %uhcp_lavaSec uhcp_lavaCurrentHeight matches 193..256 run function uhcp:lava/replace/secondary/branches/5
execute if score %uhcp_lavaSec uhcp_lavaCurrentHeight matches 257..319 run function uhcp:lava/replace/secondary/branches/6
