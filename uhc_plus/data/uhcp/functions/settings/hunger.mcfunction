# Determine setting
execute if score @s uhcp_settings matches 100..199 run function uhcp:settings/hunger/amplifier
execute if score @s uhcp_settings matches 200..299 run function uhcp:settings/hunger/timer
execute if score @s uhcp_settings matches 300..399 run function uhcp:settings/hunger/setting
