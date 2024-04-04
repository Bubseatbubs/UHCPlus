# Check time
execute if score %dimension uhcp_settings matches 6000 run return run function uhcp:dimensions/notify/5m
execute if score %dimension uhcp_settings matches 1200 run return run function uhcp:dimensions/notify/1m
execute if score %dimension uhcp_settings matches 200 run return run function uhcp:dimensions/notify/10s
execute if score %dimension uhcp_settings matches 0 run function uhcp:dimensions/notify/0s
