# Determine setting
execute if score @s uhcp_settings matches 200..203 run return run function uhcp:settings/lava/time/lower
execute if score @s uhcp_settings matches 204..207 run function uhcp:settings/lava/time/raise
