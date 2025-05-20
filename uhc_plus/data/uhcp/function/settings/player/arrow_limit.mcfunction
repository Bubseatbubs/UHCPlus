# Determine setting
execute if score @s uhcp_settings matches 400..403 run return run function uhcp:settings/player/arrow_limit/lower
execute if score @s uhcp_settings matches 404..407 run function uhcp:settings/player/arrow_limit/raise
