execute store result score %gold uhcp_aug_count run clear @s gold_ingot
summon minecraft:item ~ ~ ~ {PickupDelay:20s,Tags:["UHCP_PlannedEconomyItem"],Item:{id:"minecraft:gold_ingot",Count:1b}}
execute store result entity @e[tag=UHCP_PlannedEconomyItem,sort=nearest,limit=1] Item.count int 1 run scoreboard players get %gold uhcp_aug_count
tag @e remove UHCP_PlannedEconomyItem