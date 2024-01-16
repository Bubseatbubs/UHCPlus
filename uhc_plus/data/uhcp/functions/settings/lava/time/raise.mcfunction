# Determine setting
execute unless score %uhcp_lava uhcp_lavaTime matches -2147483648..2147483647 run scoreboard players set %uhcp_lava uhcp_lavaTime 8400
execute if score @s uhcp_settings matches 814 run function uhcp:settings/lava/time/raise/10s
execute if score @s uhcp_settings matches 815 run function uhcp:settings/lava/time/raise/1m
execute if score @s uhcp_settings matches 816 run function uhcp:settings/lava/time/raise/5m
execute if score @s uhcp_settings matches 817 run function uhcp:settings/lava/time/raise/15m
