# Warnings
execute if score %uhcp_lava uhcp_gameTime matches ..24000 run function uhcp:lava/notify

# Countdown
scoreboard players remove %uhcp_lava uhcp_gameTime 1
