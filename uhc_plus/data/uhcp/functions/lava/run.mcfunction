# Initial logic
execute unless score %lava_init uhcp_initStatus matches 1.. run function uhcp:lava/init

# Decrement lava timers
execute if score %lava uhcp_lavaTime matches 1.. run scoreboard players remove %lava uhcp_lavaTime 1
execute if score %lava uhcp_lavaTimeInterval matches 1.. run scoreboard players remove %lava uhcp_lavaTimeInterval 1
execute if score %uhcp_lavaSec uhcp_lavaTime matches 1.. run scoreboard players remove %uhcp_lavaSec uhcp_lavaTime 1
execute if score %uhcp_lavaBar uhcp_lavaTime matches 1.. run scoreboard players remove %uhcp_lavaBar uhcp_lavaTime 1

# Check if time to fill next layers
execute if score %lava uhcp_lavaTimeInterval matches ..0 if score %lava uhcp_lavaCurrentHeight < %lava uhcp_lavaMaxHeight run function uhcp:lava/raise/initial
execute if score %uhcp_lavaSec uhcp_lavaTime matches ..0 if score %lava uhcp_lavaCurrentHeight matches -62.. run function uhcp:lava/raise/secondary
execute if score %uhcp_lavaBar uhcp_lavaCurrentLayers matches ..15 if score %uhcp_lavaBar uhcp_lavaTime matches ..0 run function uhcp:lava/raise/barriers
