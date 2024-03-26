scoreboard players add @s uhcp_ready 1
particle trial_spawner_detection ~ ~ ~ 0.5 0.5 0.5 0.01 10 normal
execute unless score @s uhcp_ready matches 4.. run return 0

attribute @s generic.gravity modifier remove 95c5d624-7157-4cee-95eb-0d079cbfec99
tag @s remove UHCP_InflictedWithGravityGlobe
scoreboard players reset @s uhcp_ready