# [-3..0]
execute if score %lava uhcp_lavaCurrentHeight matches -3 run function uhcp:lava/replace/initial/fill/-3
execute if score %lava uhcp_lavaCurrentHeight matches -2 run function uhcp:lava/replace/initial/fill/-2
execute if score %lava uhcp_lavaCurrentHeight matches -1 run function uhcp:lava/replace/initial/fill/-1
execute if score %lava uhcp_lavaCurrentHeight matches 0 run function uhcp:lava/replace/initial/fill/0
