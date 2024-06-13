# Determine setting
execute if score @s uhcp_settings matches 308 run return run function uhcp:settings/other/difficulty/easy
execute if score @s uhcp_settings matches 309 run return run function uhcp:settings/other/difficulty/normal
execute if score @s uhcp_settings matches 310 run return run function uhcp:settings/other/difficulty/hard
execute if score @s uhcp_settings matches 311 run function uhcp:settings/other/difficulty/peaceful
