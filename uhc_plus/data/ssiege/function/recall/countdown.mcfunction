execute at @s run particle minecraft:glow ~ ~ ~ 0.5 0.5 0.5 1 10 normal
execute if score @s ssiege_recall_charge matches 80 run playsound minecraft:block.portal.trigger master @s ~ ~ ~ 1 1 1
scoreboard players remove @s ssiege_recall_charge 1