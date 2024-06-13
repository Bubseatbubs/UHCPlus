# Ran once the countdown ends
# Give player Snow Boots if in Snowy Biome
execute if biome ~ ~-1 ~ #uhcp:snowy run loot replace entity @s armor.feet loot uhcp:snow_boots

execute at @s run function uhcp:augments/effects/init
function uhcp:augments/announce
