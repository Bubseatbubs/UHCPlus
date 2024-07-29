#>  uhcp:augments/init
#   Initial augment selection function
#   Generates options for player to choose from
#
# @within  uhcp:start/augments

# Generate inventories
function uhcp:augments/generate/choices
function uhcp:augments/generate/panes

# Extra fluff
execute at @s run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.5 0.5 0.5 0.001 100 normal

# Finalize
tag @s add UHCP_ChoosingItem
