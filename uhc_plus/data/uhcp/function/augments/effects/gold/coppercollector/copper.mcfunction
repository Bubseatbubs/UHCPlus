# Copper blocks
execute store result score @s uhcp_initStatus run clear @s minecraft:copper_block
execute unless score @s uhcp_initStatus matches 0 run function uhcp:augments/effects/gold/coppercollector/block/calculate

# Copper ingots
execute store result score @s uhcp_initStatus run clear @s minecraft:copper_ingot 0
execute if score @s uhcp_initStatus matches 8.. run function uhcp:augments/effects/gold/coppercollector/ingot/calculate
