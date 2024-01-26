# Warnings
execute if score %uhcp_dimTime uhcp_gameTime matches 0..24000 run function uhcp:dimensions/notify

# Close dimensions
execute if score %uhcp_dimTime uhcp_gameTime matches ..0 run function uhcp:dimensions/close

# Countdown
execute unless score %uhcp_dimTime uhcp_gameTime matches ..-1 run scoreboard players remove %uhcp_dimTime uhcp_gameTime 1
