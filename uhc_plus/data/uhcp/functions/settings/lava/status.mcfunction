# Determine setting
execute unless score %lava_start uhcp_initStatus matches 1.. unless score %lava_init uhcp_initStatus matches 1.. if score @s uhcp_settings matches 226 run function uhcp:settings/lava/status/start
execute unless score %lava_start uhcp_initStatus matches 1.. if score %lava_init uhcp_initStatus matches 1.. if score @s uhcp_settings matches 226 run function uhcp:settings/lava/status/restart
execute if score %lava_start uhcp_initStatus matches 1.. if score @s uhcp_settings matches 227 run function uhcp:settings/lava/status/stop
