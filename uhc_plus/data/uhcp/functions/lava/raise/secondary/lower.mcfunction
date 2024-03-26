# Lower current height
scoreboard players remove %lava_secondary uhcp_lavaCurrentHeight 3

# Try to restart lava placement
execute if score %lava_secondary uhcp_initStatus matches ..0 run function uhcp:lava/raise/secondary/determine

# Reset timer
execute unless score %lava uhcp_lavaTime matches 1.. run scoreboard players set %lava_secondary uhcp_lavaTime 20
execute if score %lava uhcp_lavaTime matches 1.. run scoreboard players set %lava_secondary uhcp_lavaTime 70
execute if score %lava uhcp_lavaCurrentHeight matches 319.. run scoreboard players set %lava_secondary uhcp_lavaTime 20

# Fill next layer
execute if score %lava_secondary uhcp_lavaCurrentHeight matches -63.. run function uhcp:lava/raise/secondary/fill

# End if reached last layers
execute if score %lava_secondary uhcp_lavaCurrentHeight matches ..-61 run scoreboard players set %lava_secondary_init uhcp_initStatus 0
