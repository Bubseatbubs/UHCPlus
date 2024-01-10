# Initial logic
execute unless score %uhcp_init uhcp_initStatus matches 1.. if score stage status matches 2 run function uhcp:init

# Send message after game starts
execute if score countdown tick matches -20 run function uhcp:start

# Lava checks
execute if score %uhcp_init uhcp_initStatus matches 1.. run function uhcp:lava/checks

# Hunger Effect
execute unless score %h_max uhcp_settings matches -100 if score %uhcp_init uhcp_initStatus matches 1.. as @a at @s run function uhcp:hunger/update

# Settings menu
execute unless score %uhcp_init uhcp_initStatus matches 1.. run function uhcp:settings/checks
execute as @a at @s if score @s uhcp_settings = @s uhcp_settings run function uhcp:settings/change
