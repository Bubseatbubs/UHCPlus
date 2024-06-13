# Determine setting
execute if score @s uhcp_settings matches 218..221 run return run function uhcp:settings/lava/countdown/lower
execute if score @s uhcp_settings matches 222..225 run function uhcp:settings/lava/countdown/raise
