summon minecraft:item ~ ~ ~ {PickupDelay:20s,Tags:["UHCP_PlannedEconomyItemNugget"],Item:{id:"minecraft:gold_nugget"}}
execute store result entity @e[tag=UHCP_PlannedEconomyItemNugget,sort=nearest,limit=1] Item.count int 1 run scoreboard players get %gold uhcp_initStatus
tag @e remove UHCP_PlannedEconomyItemNugget
