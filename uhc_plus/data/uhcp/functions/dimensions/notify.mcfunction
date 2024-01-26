# Check time
execute if score %uhcp_dimTime uhcp_gameTime matches 1200..24000 run function uhcp:dimensions/notify/minutes
execute if score %uhcp_dimTime uhcp_gameTime matches 0..1199 run function uhcp:dimensions/notify/seconds
