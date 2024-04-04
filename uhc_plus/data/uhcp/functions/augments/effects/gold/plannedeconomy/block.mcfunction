execute store result score %gold uhcp_aug_count run clear @s gold_block
summon item ~ ~ ~ {PickupDelay:20,Tags:["UHCP_PlannedEconomyItemBlock"],Item:{id:"minecraft:gold_block",Count:1b}}
execute store result entity @e[tag=UHCP_PlannedEconomyItemBlock,sort=nearest,limit=1] Item.count int 1 run scoreboard players get %gold uhcp_aug_count
tag @e remove UHCP_PlannedEconomyItemBlock