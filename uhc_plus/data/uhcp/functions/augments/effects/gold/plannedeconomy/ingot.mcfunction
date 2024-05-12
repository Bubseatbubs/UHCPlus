summon minecraft:item ~ ~ ~ {PickupDelay:20s,Tags:["UHCP_PlannedEconomyItem"],Item:{id:"minecraft:gold_ingot"}}
execute store result entity @e[tag=UHCP_PlannedEconomyItem,sort=nearest,limit=1] Item.count int 1 run scoreboard players get %gold uhcp_initStatus
tag @e remove UHCP_PlannedEconomyItem
