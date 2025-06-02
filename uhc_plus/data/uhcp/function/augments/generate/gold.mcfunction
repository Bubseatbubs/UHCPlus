# Initialize augment selection
execute at @s run function uhcp:start/augments/location

# Generate augment selection items
tag @s add UHCP_GeneratingAugments

function uhcp:augments/roll/gold
