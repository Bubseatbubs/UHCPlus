# Summon experience orbs
execute store result score @s uhcp_initStatus run random value 1..10
summon minecraft:experience_orb ~-0.018 ~ ~-0.024 {Value:1s,Motion:[-0.1d,0.13d,-0.07d]}

execute if score @s uhcp_initStatus matches 1..4 run summon minecraft:experience_orb ~-0.02 ~ ~-0.007 {Value:1s,Motion:[0.01d,0.18d,0.02d]}
