# Decrement lava timers
scoreboard players remove %uhcp_lava uhcp_lavaTime 1
scoreboard players remove %uhcp_lava uhcp_lavaTimeInterval 1

# Check if time to fill next layer
execute unless score %uhcp_lava uhcp_lavaTime matches ..0 if score %uhcp_lava uhcp_lavaTimeInterval matches ..0 run function uhcp:lava/raise
