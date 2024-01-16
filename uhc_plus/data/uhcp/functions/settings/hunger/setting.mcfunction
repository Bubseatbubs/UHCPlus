# Determine setting
execute if score @s uhcp_settings matches 300 run function uhcp:settings/hunger/setting/automatic
execute if score @s uhcp_settings matches 301 run function uhcp:settings/hunger/setting/manual
