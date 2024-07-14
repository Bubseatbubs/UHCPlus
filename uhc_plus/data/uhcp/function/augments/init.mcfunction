#>  uhcp:augments/init
#   Initial augment selection function
#   Generates options for player to choose from
#
# @within  uhcp:start/augments

# Generate inventories
function uhcp:augments/generate/choices
function uhcp:augments/generate/panes

# Extra fluff
execute at @s run function uhcp:augments/generate/effects

# Finalize
tag @s add UHCP_ChoosingItem
