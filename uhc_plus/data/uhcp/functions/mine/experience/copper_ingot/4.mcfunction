# Summon experience orbs
execute store result score @s uhcp_initStatus run random value 1..10

execute if score @s uhcp_initStatus matches 1..8 run return run summon minecraft:experience_orb ~-0.046 ~ ~0.011 {Value:3s,Motion:[0.09d,0.20d,0.04d]}
summon minecraft:experience_orb ~0.001 ~ ~-0.011 {Value:1s,Motion:[0.05d,0.01d,-0.06d]}
summon minecraft:experience_orb ~0.037 ~ ~-0.032 {Value:1s,Motion:[-0.09d,0.17d,0.01d]}
