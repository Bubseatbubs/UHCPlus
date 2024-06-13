# Summon experience orbs
execute store result score @s uhcp_initStatus run random value 1..10

execute if score @s uhcp_initStatus matches 1..7 run summon minecraft:experience_orb ~0.01 ~ ~-0.036 {Value:1s,Motion:[-0.08d,0.22d,0.01d]}
