# Determine setting
execute if score @s uhcp_settings matches 512 run return run function uhcp:settings/team/friendly_fire/on
execute if score @s uhcp_settings matches 513 run function uhcp:settings/team/friendly_fire/off
