# Warnings
execute if score %dimension uhcp_settings matches 0..24000 run function uhcp:dimensions/notify

# Close dimensions
execute if score %dimension uhcp_settings matches ..0 run function uhcp:dimensions/close

# Countdown
execute unless score %dimension uhcp_settings matches ..-1 run scoreboard players remove %dimension uhcp_settings 1
