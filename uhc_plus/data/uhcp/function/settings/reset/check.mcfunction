# Check if game is in progress
execute unless score %game uhcp_initStatus matches 1 run return run function uhcp:settings/reset/reset
tellraw @s "Settings couldn't be reset as there is currently a game in progress."
