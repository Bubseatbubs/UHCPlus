# Stick to the plan!
scoreboard players set @s uhcp_leave 1000
tag @s remove UHCP_PlannedEcon

# Clear gold
execute store result score %gold_block uhcp_aug_count run clear @s minecraft:gold_block
execute store result score %gold_ingot uhcp_aug_count run clear @s minecraft:gold_ingot
execute store result score %gold_nugget uhcp_aug_count run clear @s minecraft:gold_nugget

# Return gold as item entities
execute if score %gold_block uhcp_aug_count matches 1.. run function uhcp:augments/effects/gold/plannedeconomy/block
execute if score %gold_ingot uhcp_aug_count matches 1.. run function uhcp:augments/effects/gold/plannedeconomy/ingot
execute if score %gold_nugget uhcp_aug_count matches 1.. run function uhcp:augments/effects/gold/plannedeconomy/nugget

# End
scoreboard players reset @s uhcp_leave
advancement revoke @s only uhcp:augments/planned_economy
