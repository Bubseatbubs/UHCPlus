# Check time
execute if score %dimension uhcp_settings matches 1200..24000 run function uhcp:dimensions/notify/minutes
execute if score %dimension uhcp_settings matches 0..1199 run function uhcp:dimensions/notify/seconds
