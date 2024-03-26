scoreboard players add @s uhcp_ready 1
particle soul_fire_flame ~ ~2 ~ 1 1 1 0.01 1 normal
particle soul ~ ~2 ~ 1 1 1 0.01 1 normal
execute if score @s uhcp_ready matches 5.. run playsound minecraft:block.fire.ambient master @s ~ ~ ~ 0.5 1 0.5
execute if score @s uhcp_ready matches 5.. run scoreboard players reset @s uhcp_ready