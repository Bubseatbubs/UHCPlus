# Determine setting
execute if score @s uhcp_settings matches 13 run return run function uhcp:settings/augments/patrons/on
execute if score @s uhcp_settings matches 14 run function uhcp:settings/augments/patrons/off
