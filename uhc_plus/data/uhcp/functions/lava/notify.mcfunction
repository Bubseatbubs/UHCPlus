# Check time
execute if score %lava_countdown uhcp_settings matches 1200..24000 run function uhcp:lava/notify/minutes
execute if score %lava_countdown uhcp_settings matches 0..1199 run function uhcp:lava/notify/seconds
