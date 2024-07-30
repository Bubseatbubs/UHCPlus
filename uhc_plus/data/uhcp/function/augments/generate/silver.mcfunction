# Initialize augment selection
execute at @s run function uhcp:start/augments/location

# Generate augment selection items
tag @s add UHCP_GeneratingAugments
scoreboard players set @s uhcp_aug_choosingAugment 1
function uhcp:augments/roll/silver
