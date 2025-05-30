# Raw copper blocks
execute store result score @s uhcp_initStatus run clear @s minecraft:raw_copper_block
execute unless score @s uhcp_initStatus matches 0 run function uhcp:augments/effects/gold/coppercollector/raw_block/calculate

# Raw copper
execute store result score @s uhcp_initStatus run clear @s minecraft:raw_copper 0
execute if score @s uhcp_initStatus matches 8.. run function uhcp:augments/effects/gold/coppercollector/raw/calculate
