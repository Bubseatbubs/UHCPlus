#>  uhcp:augments/threw_item
#   Runs when the player throws an item
#   Resets advancements related to choosing/throwing an item
#   Does not return the item -- this is handled by uhcp:augments/validate
#
# @within uhcp:augments/threw_item

#declare advancement uhcp:augments/threw_item

scoreboard players set @s uhcp_aug_validSelection 0

# Revert Black Stained Glass Pane
clear @s minecraft:black_stained_glass_pane
function uhcp:augments/generate/panes

# Revoke advancements
advancement revoke @s only uhcp:augments/chosen_item
advancement revoke @s only uhcp:augments/threw_item
