# Raise border size
execute if score @s uhcp_settings matches 104 run return run scoreboard players add %border_size uhcp_settings 10
execute if score @s uhcp_settings matches 105 run return run scoreboard players add %border_size uhcp_settings 100
execute if score @s uhcp_settings matches 106 run return run scoreboard players add %border_size uhcp_settings 500
execute if score @s uhcp_settings matches 107 run scoreboard players add %border_size uhcp_settings 10000
