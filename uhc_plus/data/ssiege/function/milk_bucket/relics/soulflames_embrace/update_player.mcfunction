scoreboard players add @s uhcp_relic_count 1
scoreboard players add @s uhcp_relic_sfe_time 1
particle minecraft:soul_fire_flame ~ ~2 ~ 1 1 1 0.01 1 normal
particle minecraft:soul ~ ~2 ~ 1 1 1 0.01 1 normal
playsound minecraft:block.fire.ambient master @s[scores={uhcp_relic_count=5..}] ~ ~ ~ 0.5 1 0.5
scoreboard players reset @s[scores={uhcp_relic_count=5..}] uhcp_relic_count

execute unless score @s uhcp_relic_sfe_time matches 400.. run return fail
tag @s remove UHCP_SoulflameEmbrace
scoreboard players reset @s uhcp_relic_count
scoreboard players reset @s uhcp_relic_sfe_time
