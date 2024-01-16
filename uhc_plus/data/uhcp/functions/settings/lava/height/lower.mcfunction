# Determine setting
execute unless score %uhcp_lava uhcp_lavaMaxHeight matches -2147483648..2147483647 run scoreboard players set %uhcp_lava uhcp_lavaMaxHeight 50
execute if score @s uhcp_settings matches 820 run function uhcp:settings/lava/height/lower/1
execute if score @s uhcp_settings matches 821 run function uhcp:settings/lava/height/lower/5
execute if score @s uhcp_settings matches 822 run function uhcp:settings/lava/height/lower/10
execute if score @s uhcp_settings matches 823 run function uhcp:settings/lava/height/lower/25
execute if score @s uhcp_settings matches 824 run function uhcp:settings/lava/height/lower/50
