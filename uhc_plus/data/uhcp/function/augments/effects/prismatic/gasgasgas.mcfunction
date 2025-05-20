effect clear @s minecraft:speed
effect give @s minecraft:speed infinite 0 true
execute unless biome ~ ~-1 ~ #uhcp:snowy run return run loot replace entity @s armor.feet loot uhcp:armaments/boots_of_swiftness
loot give @s loot uhcp:armaments/boots_of_swiftness
