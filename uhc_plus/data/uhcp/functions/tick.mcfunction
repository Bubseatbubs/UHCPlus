# Initial logic
execute unless score %uhcp_init uhcp_initStatus matches 1.. if score stage status matches 2 run function uhcp:init

# Send message after game starts
execute if score countdown tick matches -20 run function uhcp:start

# Lava checks
execute if score %uhcp_init uhcp_initStatus matches 1.. run function uhcp:lava/checks

# Settings menu
execute unless score %uhcp_init uhcp_initStatus matches 1.. run function uhcp:settings/checks
