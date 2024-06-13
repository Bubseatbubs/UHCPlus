# Lower current height
scoreboard players remove %lava_secondary uhcp_lava_currentHeight 3

# Try to restart lava placement
execute if score %lava_secondary uhcp_initStatus matches ..0 run function uhcp:lava/raise/secondary/determine

# Reset timer
execute unless score %lava uhcp_lava_time matches 1.. run scoreboard players set %lava_secondary uhcp_lava_time 20
execute if score %lava uhcp_lava_time matches 1.. run scoreboard players set %lava_secondary uhcp_lava_time 70
execute if score %lava uhcp_lava_currentHeight matches 319.. run scoreboard players set %lava_secondary uhcp_lava_time 20

# Fill next layer
execute if score %lava_secondary uhcp_lava_currentHeight matches -63.. run function uhcp:lava/raise/secondary/fill

# End if reached last layers
execute if score %lava_secondary uhcp_lava_currentHeight matches ..-61 run scoreboard players set %lava_secondary_init uhcp_initStatus 0
