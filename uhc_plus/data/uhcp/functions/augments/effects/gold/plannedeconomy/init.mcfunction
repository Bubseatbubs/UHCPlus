execute store result score %gold uhcp_initStatus run clear @s minecraft:gold_block
execute if score %gold uhcp_initStatus matches 1.. run function uhcp:augments/effects/gold/plannedeconomy/block
execute store result score %gold uhcp_initStatus run clear @s minecraft:gold_ingot
execute if score %gold uhcp_initStatus matches 1.. run function uhcp:augments/effects/gold/plannedeconomy/ingot
execute store result score %gold uhcp_initStatus run clear @s minecraft:gold_nugget
execute if score %gold uhcp_initStatus matches 1.. run function uhcp:augments/effects/gold/plannedeconomy/nugget
advancement revoke @s only uhcp:augments/planned_economy
