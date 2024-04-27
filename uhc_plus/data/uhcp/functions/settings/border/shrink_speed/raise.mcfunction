# Determine setting
execute if score @s uhcp_settings matches 122 run return run function uhcp:settings/border/shrink_speed/raise/10s
execute if score @s uhcp_settings matches 123 run return run function uhcp:settings/border/shrink_speed/raise/1m
execute if score @s uhcp_settings matches 124 run return run function uhcp:settings/border/shrink_speed/raise/5m
execute if score @s uhcp_settings matches 125 run function uhcp:settings/border/shrink_speed/raise/15m
