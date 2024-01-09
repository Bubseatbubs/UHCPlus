# Initial logic
execute unless score %uhcp_init uhcp_initstatus matches 1.. if score stage status matches 2 run function uhcp:init

# Lava checks
execute if score %uhcp_init uhcp_initstatus matches 1.. run function uhcp:lava/checks

# Hunger Effect
execute if score %uhcp_init uhcp_initstatus matches 1.. run function uhcp:hunger/update