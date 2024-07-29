# Initialize augment selection
execute at @s run function uhcp:start/augments/location

# Generate inventories
tag @s add UHCP_GeneratingAugments
scoreboard players set @s uhcp_aug_choosingAugment 1
function uhcp:augments/roll/prismatic
function uhcp:augments/generate/panes

# Finalize
tag @s add UHCP_ChoosingItem
