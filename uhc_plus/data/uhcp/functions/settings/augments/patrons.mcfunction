# Determine setting
execute if score @s uhcp_settings matches 14 run return run function uhcp:settings/augments/patrons/on
execute if score @s uhcp_settings matches 15 run function uhcp:settings/augments/patrons/off
