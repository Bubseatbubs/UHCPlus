# Lower current height
scoreboard players remove %uhcp_lavaSec uhcp_lavaCurrentHeight 3

# Fill next layer
execute if score %uhcp_lavaSec uhcp_lavaCurrentHeight matches -63.. run function uhcp:lava/raise/secondary/fill

# End if reached last layers
execute if score %uhcp_lavaSec uhcp_lavaCurrentHeight matches ..-61 run scoreboard players set %uhcp_lavaSecInit uhcp_initStatus 0
