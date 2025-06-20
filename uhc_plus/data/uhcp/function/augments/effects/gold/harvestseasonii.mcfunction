# 25% chance to harvest golden apple
execute store result score @s uhcp_initStatus run random value 0..3
execute unless score @s uhcp_initStatus matches 0 run return fail

give @s minecraft:golden_apple
tellraw @s {"text":"You harvested a Golden Apple!","color":"red"}
