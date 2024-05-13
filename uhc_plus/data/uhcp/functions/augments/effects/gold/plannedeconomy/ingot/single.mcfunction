summon minecraft:item ~ ~ ~ {PickupDelay:40s,Tags:["UHCP_PlannedEconomy"],Item:{id:"minecraft:gold_ingot"}}
execute as @e[tag=UHCP_PlannedEconomy,sort=nearest,limit=1] run function uhcp:augments/effects/gold/plannedeconomy/ingot/count
