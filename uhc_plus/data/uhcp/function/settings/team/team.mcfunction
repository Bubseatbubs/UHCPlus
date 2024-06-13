# Determine setting
execute if score @s uhcp_settings matches 500 run return run function uhcp:settings/team/team/on
execute if score @s uhcp_settings matches 501 run function uhcp:settings/team/team/off
