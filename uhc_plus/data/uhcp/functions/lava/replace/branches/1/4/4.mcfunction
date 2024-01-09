# [-3..0]
execute if score %uhcp_lava uhcp_lavaCurrentHeight matches -3 run function uhcp:lava/replace/fill/-3
execute if score %uhcp_lava uhcp_lavaCurrentHeight matches -2 run function uhcp:lava/replace/fill/-2
execute if score %uhcp_lava uhcp_lavaCurrentHeight matches -1 run function uhcp:lava/replace/fill/-1
execute if score %uhcp_lava uhcp_lavaCurrentHeight matches 0 run function uhcp:lava/replace/fill/0
