# Initial logic
execute unless score %uhcp_lavaInit uhcp_initStatus matches 1.. run function uhcp:init

# Decrement lava timers
scoreboard players remove %uhcp_lava uhcp_lavaTime 1
scoreboard players remove %uhcp_lava uhcp_lavaTimeInterval 1
scoreboard players remove %uhcp_lavaSec uhcp_lavaTime 1

# Check if time to fill next layers
execute if score %uhcp_lava uhcp_lavaCurrentHeight < %uhcp_lava uhcp_lavaMaxHeight if score %uhcp_lava uhcp_lavaTimeInterval matches ..0 run function uhcp:lava/raise/initial
execute if score %uhcp_lava uhcp_lavaCurrentHeight matches -63.. if score %uhcp_lavaSec uhcp_lavaTime matches ..0 run function uhcp:lava/raise/secondary
