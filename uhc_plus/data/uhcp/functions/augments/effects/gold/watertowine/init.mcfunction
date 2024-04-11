execute store result score %potion uhcp_aug_count run clear @s minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] 1
loot give @s loot uhcp:augments/watertowine
execute unless score %potion uhcp_aug_count matches 0 run uhcp:augments/effects/gold/watertowine/init