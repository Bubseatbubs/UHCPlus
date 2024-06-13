scoreboard players add @s uhcp_relic_count 1
particle minecraft:trial_spawner_detection ~ ~ ~ 0.5 0.5 0.5 0.01 10 normal
execute unless score @s uhcp_relic_count matches 4.. run return 0

attribute @s minecraft:generic.gravity modifier remove uhcp:gravity_globe
tag @s remove UHCP_InflictedWithGravityGlobe
scoreboard players reset @s uhcp_relic_count