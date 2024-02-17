# Determine setting
execute if score @s uhcp_settings matches 834 run function uhcp:settings/lava/countdown/raise/10s
execute if score @s uhcp_settings matches 835 run function uhcp:settings/lava/countdown/raise/1m
execute if score @s uhcp_settings matches 836 run function uhcp:settings/lava/countdown/raise/5m
execute if score @s uhcp_settings matches 837 run function uhcp:settings/lava/countdown/raise/15m
