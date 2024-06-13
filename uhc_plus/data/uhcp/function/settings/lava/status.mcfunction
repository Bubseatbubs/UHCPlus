# Determine setting
execute if score @s uhcp_settings matches 226 run return run execute unless score %lava_start uhcp_initStatus matches 1 run function uhcp:settings/lava/status/start
execute if score @s uhcp_settings matches 227 if score %lava_start uhcp_initStatus matches 1 run function uhcp:settings/lava/status/stop
