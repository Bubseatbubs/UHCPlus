# Determine setting
execute unless score %uhcp_lavaStart uhcp_initStatus matches 1.. unless score %uhcp_lavaInit uhcp_initStatus matches 1.. if score @s uhcp_settings matches 800 run function uhcp:settings/lava/status/start
execute unless score %uhcp_lavaStart uhcp_initStatus matches 1.. if score %uhcp_lavaInit uhcp_initStatus matches 1.. if score @s uhcp_settings matches 800 run function uhcp:settings/lava/status/restart
execute if score %uhcp_lavaStart uhcp_initStatus matches 1.. if score @s uhcp_settings matches 801 run function uhcp:settings/lava/status/stop
