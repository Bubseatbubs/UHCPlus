# Decrement lava timers
execute if score countdown tick matches ..-1 run scoreboard players remove %uhcp_lava uhcp_lavaTime 1
execute if score countdown tick matches ..-1 run scoreboard players remove %uhcp_lava uhcp_lavaTimeInterval 1

# Check if time to fill next layer
execute unless score %uhcp_lava uhcp_lavaTime matches ..-1 if score %uhcp_lava uhcp_lavaTimeInterval matches ..0 run function uhcp:lava/raise

# Fill lava
execute if score %uhcp_lava uhcp_lavaCurrentHeight matches -63..0 run function uhcp:lava/replace/branches/1
execute if score %uhcp_lava uhcp_lavaCurrentHeight matches 1..64 run function uhcp:lava/replace/branches/2
execute if score %uhcp_lava uhcp_lavaCurrentHeight matches 65..128 run function uhcp:lava/replace/branches/3
execute if score %uhcp_lava uhcp_lavaCurrentHeight matches 129..192 run function uhcp:lava/replace/branches/4
execute if score %uhcp_lava uhcp_lavaCurrentHeight matches 193..256 run function uhcp:lava/replace/branches/5
execute if score %uhcp_lava uhcp_lavaCurrentHeight matches 257..320 run function uhcp:lava/replace/branches/6
