# Determine setting
execute unless score %uhcp_lava uhcp_lavaMaxHeight matches -2147483648..2147483647 run scoreboard players operation %uhcp_lava uhcp_lavaMaxHeight = %uhcp_lavaDef uhcp_lavaMaxHeight
execute if score @s uhcp_settings matches 825 run function uhcp:settings/lava/height/raise/1
execute if score @s uhcp_settings matches 826 run function uhcp:settings/lava/height/raise/5
execute if score @s uhcp_settings matches 827 run function uhcp:settings/lava/height/raise/10
execute if score @s uhcp_settings matches 828 run function uhcp:settings/lava/height/raise/25
execute if score @s uhcp_settings matches 829 run function uhcp:settings/lava/height/raise/50
