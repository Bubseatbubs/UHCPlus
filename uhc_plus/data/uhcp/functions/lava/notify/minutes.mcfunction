# Check time
execute if score %uhcp_lava uhcp_gameTime matches 24000 run function uhcp:lava/notify/minutes/20
#execute if score %uhcp_lava uhcp_gameTime matches 18000 run function uhcp:lava/notify/minutes/15
execute if score %uhcp_lava uhcp_gameTime matches 12000 run function uhcp:lava/notify/minutes/10
execute if score %uhcp_lava uhcp_gameTime matches 6000 run function uhcp:lava/notify/minutes/5
#execute if score %uhcp_lava uhcp_gameTime matches 2400 run function uhcp:lava/notify/minutes/2
execute if score %uhcp_lava uhcp_gameTime matches 1200 run function uhcp:lava/notify/minutes/1
