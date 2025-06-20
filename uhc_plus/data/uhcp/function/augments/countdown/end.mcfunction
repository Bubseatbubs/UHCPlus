# Runs once the countdown ends
# Give player snow boots if in snowy biome
execute if biome ~ ~-1 ~ #uhcp:snowy run loot replace entity @s armor.feet loot uhcp:snow_boots

# Initialize augment
execute unless predicate uhcp:augments/no_init run function uhcp:augments/effects/init

# Particle effect
particle minecraft:totem_of_undying ~ ~ ~ 0.5 0.5 0.5 0.25 100 normal
