# Summon experience orbs
execute store result score @s uhcp_initStatus run random value 1..10

execute if score @s uhcp_initStatus matches 1 run return run summon minecraft:experience_orb ~-0.047 ~ ~0.027 {Value:3s,Motion:[-0.08d,0.05d,-0.04d]}
summon minecraft:experience_orb ~0.017 ~ ~0.018 {Value:1s,Motion:[0.06d,0.03d,-0.08d]}
summon minecraft:experience_orb ~0.024 ~ ~-0.05 {Value:1s,Motion:[0.08d,0.16d,0.0d]}
