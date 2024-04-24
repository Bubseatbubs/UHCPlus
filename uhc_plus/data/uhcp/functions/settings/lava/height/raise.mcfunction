# Determine setting
execute unless score %lava uhcp_lava_maxHeight = %lava uhcp_lava_maxHeight run scoreboard players operation %lava uhcp_lava_maxHeight = %lava_def uhcp_lava_maxHeight
execute if score @s uhcp_settings matches 213 run function uhcp:settings/lava/height/raise/1
execute if score @s uhcp_settings matches 214 run function uhcp:settings/lava/height/raise/5
execute if score @s uhcp_settings matches 215 run function uhcp:settings/lava/height/raise/10
execute if score @s uhcp_settings matches 216 run function uhcp:settings/lava/height/raise/25
execute if score @s uhcp_settings matches 217 run function uhcp:settings/lava/height/raise/50
