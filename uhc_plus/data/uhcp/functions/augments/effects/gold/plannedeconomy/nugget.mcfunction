execute store result score %gold uhcp_aug_count run clear @s gold_nugget
summon item ~ ~ ~ {PickupDelay:20,Tags:["UHCP_PlannedEconomyItemNugget"],Item:{id:"minecraft:gold_nugget",Count:1b}}
execute store result entity @e[tag=UHCP_PlannedEconomyItem,sort=nearest,limit=1] Item.count int 1 run scoreboard players get %gold uhcp_aug_count
tag @e remove UHCP_PlannedEconomyItemNugget