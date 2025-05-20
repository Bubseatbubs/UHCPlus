# Summon experience orbs
execute store result score @s uhcp_initStatus run random value 1..10
summon minecraft:experience_orb ~-0.017 ~ ~-0.042 {Value:3s,Motion:[-0.05d,0.06d,0.01d]}

execute if score @s uhcp_initStatus matches 1..5 run summon minecraft:experience_orb ~0.043 ~ ~0.002 {Value:1s,Motion:[-0.01d,0.2d,0.1d]}
