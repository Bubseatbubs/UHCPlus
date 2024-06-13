summon minecraft:item ~ ~ ~ {PickupDelay:40s,Item:{id:"minecraft:gold_block",count:64}}
scoreboard players remove @s uhcp_arrowCount 1
execute if score @s uhcp_arrowCount matches 1.. run function uhcp:augments/effects/gold/plannedeconomy/block/stack
