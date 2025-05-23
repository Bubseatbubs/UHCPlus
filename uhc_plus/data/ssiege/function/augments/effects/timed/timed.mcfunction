# Run timed augment effects
execute if score @s uhcp_augment matches 0..199 run return run function ssiege:augments/effects/timed/gold
execute if score @s uhcp_augment matches 200..399 run return run function ssiege:augments/effects/timed/prismatic
