# Runs once the countdown ends
# Give player snow boots if in snowy biome
execute if biome ~ ~-1 ~ #uhcp:snowy run loot replace entity @s armor.feet loot uhcp:snow_boots

# Initialize augment
function ssiege:augments/effects/init