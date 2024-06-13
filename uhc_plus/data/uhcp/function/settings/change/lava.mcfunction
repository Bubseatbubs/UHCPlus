# Determine setting
execute if score @s uhcp_settings matches 226..227 if score %game uhcp_initStatus matches 1 run function uhcp:settings/lava/status
execute unless score %lava_start uhcp_initStatus matches 1 run function uhcp:settings/pages/lava/stopped
execute if score %lava_start uhcp_initStatus matches 1 run function uhcp:settings/pages/lava/started
execute if score @s uhcp_settings matches 226..227 run return run execute if score %game uhcp_initStatus matches 1 run function uhcp:settings/lava/status/notification

execute if score @s uhcp_settings matches 200..207 run return run execute unless score %lava_start uhcp_initStatus matches 1 run function uhcp:settings/lava/time
execute if score @s uhcp_settings matches 208..217 run return run execute unless score %lava_start uhcp_initStatus matches 1 run function uhcp:settings/lava/height
execute if score @s uhcp_settings matches 218..225 unless score %game uhcp_initStatus matches 1 run function uhcp:settings/lava/countdown
