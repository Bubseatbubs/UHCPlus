# Determine setting
execute if score @s uhcp_settings matches 200 run function uhcp:settings/hunger/timer/-100
execute if score @s uhcp_settings matches 201 run function uhcp:settings/hunger/timer/1200
execute if score @s uhcp_settings matches 202 run function uhcp:settings/hunger/timer/3600
execute if score @s uhcp_settings matches 203 run function uhcp:settings/hunger/timer/6000
execute if score @s uhcp_settings matches 204 run function uhcp:settings/hunger/timer/12000
execute if score @s uhcp_settings matches 205 run function uhcp:settings/hunger/timer/24000
