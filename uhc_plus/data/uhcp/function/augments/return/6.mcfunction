#>  uhcp:augments/return/6
#   Returns the player's items if they made a strange selection
#
# @within uhcp:augments/validate

# Return augment selection item to proper slot
function uhcp:augments/return/locate/6

# Finalize
item replace entity @s container.6 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name='{"text":"Select an Augment!","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
function uhcp:augments/retry
