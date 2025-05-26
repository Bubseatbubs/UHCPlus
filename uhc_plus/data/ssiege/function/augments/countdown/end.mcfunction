# Runs once the countdown ends
# Give player snow boots if in snowy biome
execute if biome ~ ~-1 ~ #uhcp:snowy run loot replace entity @s armor.feet loot uhcp:snow_boots

# Initialize augment
function ssiege:augments/effects/init

# In Sniffer Siege game, also apply Opening Encounter effects
execute if score %encounter ssiege_current_encounter matches 0..10 run return run function ssiege:start/encounters/first_half
function ssiege:start/encounters/second_half
