# Determine if lava is currently rising
execute if score %uhcp_lavaStart uhcp_initStatus matches 1.. run function uhcp:settings/menu/lava/after
execute unless score %uhcp_lavaStart uhcp_initStatus matches 1.. run function uhcp:settings/menu/lava/before
