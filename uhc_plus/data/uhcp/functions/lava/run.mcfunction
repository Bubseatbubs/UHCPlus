# Initial logic
execute unless score %uhcp_lavaInit uhcp_initStatus matches 1.. run function uhcp:lava/init

# Decrement lava timers
execute if score %uhcp_lava uhcp_lavaTime matches 1.. run scoreboard players remove %uhcp_lava uhcp_lavaTime 1
execute if score %uhcp_lava uhcp_lavaTimeInterval matches 1.. run scoreboard players remove %uhcp_lava uhcp_lavaTimeInterval 1
execute if score %uhcp_lavaSec uhcp_lavaTime matches 1.. run scoreboard players remove %uhcp_lavaSec uhcp_lavaTime 1

# Check if time to fill next layers
execute if score %uhcp_lava uhcp_lavaTimeInterval matches ..0 if score %uhcp_lava uhcp_lavaCurrentHeight < %uhcp_lava uhcp_lavaMaxHeight run function uhcp:lava/raise/initial
execute if score %uhcp_lavaSec uhcp_lavaTime matches ..0 if score %uhcp_lava uhcp_lavaCurrentHeight matches -62.. run function uhcp:lava/raise/secondary
