# Determine setting
execute unless score %lava uhcp_lavaMaxHeight matches -2147483648..2147483647 run scoreboard players operation %lava uhcp_lavaMaxHeight = %lava_def uhcp_lavaMaxHeight
execute if score @s uhcp_settings matches 213 run function uhcp:settings/lava/height/raise/1
execute if score @s uhcp_settings matches 214 run function uhcp:settings/lava/height/raise/5
execute if score @s uhcp_settings matches 215 run function uhcp:settings/lava/height/raise/10
execute if score @s uhcp_settings matches 216 run function uhcp:settings/lava/height/raise/25
execute if score @s uhcp_settings matches 217 run function uhcp:settings/lava/height/raise/50
