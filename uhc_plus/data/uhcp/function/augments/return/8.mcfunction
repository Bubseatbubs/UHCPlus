#>  uhcp:augments/return/8
#   Returns the player's items if they made a strange selection
#
# @within uhcp:augments/validate

# Return augment selection item to proper slot
function uhcp:augments/return/locate/8

# Finalize
item replace entity @s container.8 with minecraft:black_stained_glass_pane[minecraft:custom_data={uhcp_augPane:1b},minecraft:item_name={"text":"Select an Augment!","color":"gold"},minecraft:max_stack_size=1,minecraft:enchantments={"minecraft:vanishing_curse":1},minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true}] 1
function uhcp:augments/retry
