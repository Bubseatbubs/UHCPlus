# Determine setting
execute if score @s uhcp_settings matches 800..809 run function uhcp:settings/lava/status
execute unless score %uhcp_lavaStart uhcp_initStatus matches 1.. if score @s uhcp_settings matches 810..819 run function uhcp:settings/lava/time
execute unless score %uhcp_lavaStart uhcp_initStatus matches 1.. if score @s uhcp_settings matches 820..829 run function uhcp:settings/lava/height
execute unless score %uhcp_lavaStart uhcp_initStatus matches 1.. unless score %game uhcp_initStatus matches 1 if score @s uhcp_settings matches 830..839 run function uhcp:settings/lava/countdown
