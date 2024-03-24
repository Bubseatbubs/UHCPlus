# Check time
execute if score %dimension uhcp_settings matches 6000 run function uhcp:dimensions/notify/minutes/5
execute if score %dimension uhcp_settings matches 1200 run function uhcp:dimensions/notify/minutes/1
