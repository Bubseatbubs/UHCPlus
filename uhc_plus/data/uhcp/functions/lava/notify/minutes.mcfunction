# Check time
# execute if score %lava_countdown uhcp_settings matches 24000 run function uhcp:lava/notify/minutes/20
# execute if score %lava_countdown uhcp_settings matches 18000 run function uhcp:lava/notify/minutes/15
# execute if score %lava_countdown uhcp_settings matches 12000 run function uhcp:lava/notify/minutes/10
execute if score %lava_countdown uhcp_settings matches 6000 run function uhcp:lava/notify/minutes/5
# execute if score %lava_countdown uhcp_settings matches 2400 run function uhcp:lava/notify/minutes/2
execute if score %lava_countdown uhcp_settings matches 1200 run function uhcp:lava/notify/minutes/1
