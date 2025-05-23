# Initialize augment selection
execute at @s run function uhcp:start/augments/location

# Generate augment selection items
tag @s add UHCP_GeneratingAugments

# TODO: Create Sniffer Siege version of this function
function uhcp:augments/roll/gold
