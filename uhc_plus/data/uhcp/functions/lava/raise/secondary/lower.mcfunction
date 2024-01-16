# Lower current height
scoreboard players remove %uhcp_lavaSec uhcp_lavaCurrentHeight 3

# Try to restart lava placement
execute if score %uhcp_lavaSec uhcp_initStatus matches ..0 run function uhcp:lava/raise/secondary/determine

# Reset timer
execute unless score %uhcp_lava uhcp_lavaTime matches 1.. run scoreboard players set %uhcp_lavaSec uhcp_lavaTime 20
execute if score %uhcp_lava uhcp_lavaTime matches 1.. run scoreboard players set %uhcp_lavaSec uhcp_lavaTime 70
execute if score %uhcp_lava uhcp_lavaCurrentHeight matches 319.. run scoreboard players set %uhcp_lavaSec uhcp_lavaTime 20

# Fill next layer
execute if score %uhcp_lavaSec uhcp_lavaCurrentHeight matches -63.. run function uhcp:lava/raise/secondary/fill

# End if reached last layers
execute if score %uhcp_lavaSec uhcp_lavaCurrentHeight matches ..-61 run scoreboard players set %uhcp_lavaSecInit uhcp_initStatus 0
