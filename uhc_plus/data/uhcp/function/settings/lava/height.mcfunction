# Determine setting
execute if score @s uhcp_settings matches 208..212 run return run function uhcp:settings/lava/height/lower
execute if score @s uhcp_settings matches 213..217 run function uhcp:settings/lava/height/raise
