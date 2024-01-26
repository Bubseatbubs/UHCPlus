# Dash color based on game state
execute unless score %uhcp_gameStart uhcp_initStatus matches 1.. run function uhcp:settings/menu/lava/unstarted/after
execute if score %uhcp_gameStart uhcp_initStatus matches 1.. run function uhcp:settings/menu/lava/started/after
