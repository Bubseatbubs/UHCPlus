# Determine setting
execute if score @s uhcp_settings matches 800..809 run return run function uhcp:settings/lava/status
execute unless score %lava_start uhcp_initStatus matches 1 if score @s uhcp_settings matches 810..819 run return run function uhcp:settings/lava/time
execute unless score %lava_start uhcp_initStatus matches 1 if score @s uhcp_settings matches 820..829 run return run function uhcp:settings/lava/height
execute unless score %lava_start uhcp_initStatus matches 1 unless score %game uhcp_initStatus matches 1 if score @s uhcp_settings matches 830..839 run function uhcp:settings/lava/countdown
