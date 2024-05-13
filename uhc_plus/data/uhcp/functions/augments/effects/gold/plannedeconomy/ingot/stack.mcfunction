summon minecraft:item ~ ~ ~ {PickupDelay:40s,Item:{id:"minecraft:gold_ingot",count:64}}
scoreboard players remove @s uhcp_arrowCount 1
execute if score @s uhcp_arrowCount matches 1.. run function uhcp:augments/effects/gold/plannedeconomy/ingot/stack
