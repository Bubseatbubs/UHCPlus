# Search for solo level items
scoreboard players remove %sL_slot uhcp_itemCount 1
execute store success score %sL_item uhcp_itemInv run data modify storage uhcp:solo_level InventoryWork[-1].components."minecraft:custom_data".solo_level set value 1b
execute if score %sL_item uhcp_itemInv matches 0 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/check
execute if score %sL_slot uhcp_itemCount matches ..0 run return fail

# Run for next slot
data remove storage uhcp:solo_level InventoryWork[-1]
function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/search
