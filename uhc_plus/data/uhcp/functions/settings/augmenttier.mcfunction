# Determine setting
execute if score @s uhcp_settings matches 500 run function uhcp:settings/augments/silver
execute if score @s uhcp_settings matches 501 run function uhcp:settings/augments/gold
execute if score @s uhcp_settings matches 502 run function uhcp:settings/augments/prismatic
execute if score @s uhcp_settings matches 503 run function uhcp:settings/augments/random