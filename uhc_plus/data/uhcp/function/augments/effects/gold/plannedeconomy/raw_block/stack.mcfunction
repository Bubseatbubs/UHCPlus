summon minecraft:item ~ ~ ~ {PickupDelay:40s,Item:{id:"minecraft:raw_gold_block",count:64}}
scoreboard players remove @s uhcp_initStatus 1
execute if score @s uhcp_initStatus matches 1.. run function uhcp:augments/effects/gold/plannedeconomy/raw_block/stack
