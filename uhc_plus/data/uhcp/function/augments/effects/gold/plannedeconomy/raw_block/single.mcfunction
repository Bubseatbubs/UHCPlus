summon minecraft:item ~ ~ ~ {PickupDelay:40s,Tags:["UHCP_PlannedEconomy"],Item:{id:"minecraft:raw_gold_block"}}
execute as @n[tag=UHCP_PlannedEconomy] run function uhcp:augments/effects/gold/plannedeconomy/raw_block/count
