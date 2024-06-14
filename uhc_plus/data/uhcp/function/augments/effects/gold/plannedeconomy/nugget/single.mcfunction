summon minecraft:item ~ ~ ~ {PickupDelay:40s,Tags:["UHCP_PlannedEconomy"],Item:{id:"minecraft:gold_nugget"}}
execute as @n[tag=UHCP_PlannedEconomy] run function uhcp:augments/effects/gold/plannedeconomy/nugget/count
