# Upgrade if necessary
execute store result score %uhcp_sLStage uhcp_itemInv run data get storage uhcp:solo_level InventoryWork[-1].components."minecraft:custom_data".solo_stage
execute if score @s uhcp_a_tier matches 1..2 if score %uhcp_sLStage uhcp_itemInv matches ..0 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/hoe/1
execute if score @s uhcp_a_tier matches 3 if score %uhcp_sLStage uhcp_itemInv matches ..1 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/hoe/2
execute if score @s uhcp_a_tier matches 4..7 if score %uhcp_sLStage uhcp_itemInv matches ..2 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/hoe/3
execute if score @s uhcp_a_tier matches 8..12 if score %uhcp_sLStage uhcp_itemInv matches ..3 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/hoe/4
execute if score @s uhcp_a_tier matches 13..16 if score %uhcp_sLStage uhcp_itemInv matches ..4 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/hoe/5
execute if score @s uhcp_a_tier matches 17.. if score %uhcp_sLStage uhcp_itemInv matches ..5 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/hoe/6
