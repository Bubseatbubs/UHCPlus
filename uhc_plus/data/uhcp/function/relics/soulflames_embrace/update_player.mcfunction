scoreboard players add @s uhcp_relic_count 1
scoreboard players add @s uhcp_relic_sfe_time 1
particle minecraft:soul_fire_flame ~ ~2 ~ 1 1 1 0.01 1 normal
particle minecraft:soul ~ ~2 ~ 1 1 1 0.01 1 normal
execute if score @s uhcp_relic_count matches 5.. run playsound minecraft:block.fire.ambient master @s ~ ~ ~ 0.5 1 0.5
execute if score @s uhcp_relic_count matches 5.. run scoreboard players reset @s uhcp_relic_count

execute if score @s uhcp_relic_sfe_time matches 400.. run tag @s remove UHCP_SoulflameEmbrace
execute if score @s uhcp_relic_sfe_time matches 400.. run scoreboard players reset @s uhcp_relic_count
execute if score @s uhcp_relic_sfe_time matches 400.. run scoreboard players reset @s uhcp_relic_sfe_time
