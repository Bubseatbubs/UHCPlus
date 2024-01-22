# Assigns a value based on what the player chose
execute store success score @s uhcp_a_count run clear @s iron_trapdoor 0
execute if score @s uhcp_a_count matches 1.. run return 0