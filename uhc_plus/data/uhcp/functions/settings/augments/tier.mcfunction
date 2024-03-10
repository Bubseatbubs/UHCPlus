# Determine setting
execute if score @s uhcp_settings matches 1 run function uhcp:settings/augments/tier/silver
execute if score @s uhcp_settings matches 2 run function uhcp:settings/augments/tier/gold
execute if score @s uhcp_settings matches 3 run function uhcp:settings/augments/tier/prismatic
execute if score @s uhcp_settings matches 4 run function uhcp:settings/augments/tier/random