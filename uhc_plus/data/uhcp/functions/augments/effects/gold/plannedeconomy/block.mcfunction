summon minecraft:item ~ ~ ~ {PickupDelay:20s,Tags:["UHCP_PlannedEconomyItemBlock"],Item:{id:"minecraft:gold_block"}}
execute store result entity @e[tag=UHCP_PlannedEconomyItemBlock,sort=nearest,limit=1] Item.count int 1 run scoreboard players get %gold uhcp_initStatus
tag @e remove UHCP_PlannedEconomyItemBlock
