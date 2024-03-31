# [0..7]
execute if score %sL_slot uhcp_itemCount matches 0..1 run return run function uhcp:augments/effects/prismatic/sololeveling/inventory/compare/remove/branches/1/1
execute if score %sL_slot uhcp_itemCount matches 2..3 run return run function uhcp:augments/effects/prismatic/sololeveling/inventory/compare/remove/branches/1/2
execute if score %sL_slot uhcp_itemCount matches 4..5 run return run function uhcp:augments/effects/prismatic/sololeveling/inventory/compare/remove/branches/1/3
execute if score %sL_slot uhcp_itemCount matches 6..7 run function uhcp:augments/effects/prismatic/sololeveling/inventory/compare/remove/branches/1/4
