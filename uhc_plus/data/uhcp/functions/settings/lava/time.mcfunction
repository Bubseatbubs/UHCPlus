# Determine setting
execute if score @s uhcp_settings matches 810..813 run function uhcp:settings/lava/time/lower
execute if score @s uhcp_settings matches 814..817 run function uhcp:settings/lava/time/raise
