# 10% chance
execute store result score @s uhcp_initStatus run random value 0..9
execute unless score @s uhcp_initStatus matches 0 run return fail

scoreboard players set @s uhcp_leave 1000
give @s minecraft:golden_apple
scoreboard players reset @s uhcp_leave

tellraw @s {"text":"You harvested a Golden Apple!","color":"red"}
