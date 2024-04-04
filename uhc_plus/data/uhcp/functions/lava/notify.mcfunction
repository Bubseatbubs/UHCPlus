# Check time
execute if score %lava_countdown uhcp_settings matches 6000 run return run function uhcp:lava/notify/5m
execute if score %lava_countdown uhcp_settings matches 1200 run return run function uhcp:lava/notify/1m
execute if score %lava_countdown uhcp_settings matches 200 run return run function uhcp:lava/notify/10s
execute if score %lava_countdown uhcp_settings matches 0 run function uhcp:lava/notify/0s
