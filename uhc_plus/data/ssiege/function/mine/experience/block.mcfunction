# Summon experience orbs
execute store result score @s uhcp_initStatus run random value 1..10

execute if score @s uhcp_initStatus matches 1..3 run return run summon minecraft:experience_orb ~0.011 ~ ~-0.015 {Value:7s,Motion:[0.0d,0.13d,-0.1d]}
summon minecraft:experience_orb ~-0.046 ~ ~0.004 {Value:3s,Motion:[-0.03d,0.25d,0.1d]}
summon minecraft:experience_orb ~-0.014 ~ ~0.017 {Value:3s,Motion:[0.07d,0.09d,0.03d]}
