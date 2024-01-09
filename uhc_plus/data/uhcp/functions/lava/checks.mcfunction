# Decrement lava timers
execute if score countdown tick matches ..-1 run scoreboard players remove %uhcp_lava uhcp_lavaTime 1
execute if score countdown tick matches ..-1 run scoreboard players remove %uhcp_lava uhcp_lavaTimeInterval 1

# Check if time to fill next layer
execute if score %uhcp_lava uhcp_lavaTimeInterval matches ..0 run function uhcp:lava/raise
