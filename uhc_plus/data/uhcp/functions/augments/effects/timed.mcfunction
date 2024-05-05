# Timed augment effects
execute if score @s uhcp_augment matches 0..99 run return run function uhcp:augments/effects/timed/gold
execute if score @s uhcp_augment matches 100..199 run return run function uhcp:augments/effects/timed/silver
execute if score @s uhcp_augment matches 200..299 run function uhcp:augments/effects/timed/prismatic
