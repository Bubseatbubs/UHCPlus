advancement revoke @s only ssiege:ate_gapple
scoreboard players add @s ssiege_gapples_eaten 1

effect give @s minecraft:regeneration 5 1
effect give @s minecraft:absorption 120 0

execute if score @s uhcp_augment matches 522 run function ssiege:augments/effects/prismatic/goldener_apples/effect