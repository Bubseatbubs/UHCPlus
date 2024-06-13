# Upgrade item
execute if score %sL_slot uhcp_itemCount matches 0..7 run return run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/branches/1
execute if score %sL_slot uhcp_itemCount matches 8..15 run return run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/branches/2
execute if score %sL_slot uhcp_itemCount matches 16..23 run return run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/branches/3
execute if score %sL_slot uhcp_itemCount matches 24..31 run return run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/branches/4
execute if score %sL_slot uhcp_itemCount matches 32..40 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/branches/5
