execute if score @s ssiege_recall_charge matches 80 run playsound minecraft:block.portal.trigger master @s ~ ~ ~ 1 1 1
execute if score @s ssiege_recall_charge matches 60 run tellraw @s {text:"Recalling to base in... 3",color:"light_purple"}
execute if score @s ssiege_recall_charge matches 40 run tellraw @s {text:"2",color:"light_purple"}
execute if score @s ssiege_recall_charge matches 20 run tellraw @s {text:"1",color:"light_purple"}
scoreboard players remove @s ssiege_recall_charge 1
particle minecraft:glow ~ ~1 ~ 0.5 0.5 0.5 1 10 normal