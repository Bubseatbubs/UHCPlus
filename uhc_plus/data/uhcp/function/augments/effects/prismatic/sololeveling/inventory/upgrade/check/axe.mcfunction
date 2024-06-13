# Upgrade if necessary
execute store result score %sL_stage uhcp_itemInv run data get storage uhcp:solo_level InventoryWork[-1].components."minecraft:custom_data".solo_stage
execute if score @s uhcp_aug_tier matches 1..2 if score %sL_stage uhcp_itemInv matches ..0 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/axe/1
execute if score @s uhcp_aug_tier matches 3 if score %sL_stage uhcp_itemInv matches ..1 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/axe/2
execute if score @s uhcp_aug_tier matches 4..6 if score %sL_stage uhcp_itemInv matches ..2 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/axe/3
execute if score @s uhcp_aug_tier matches 7 if score %sL_stage uhcp_itemInv matches ..3 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/axe/4
execute if score @s uhcp_aug_tier matches 8..10 if score %sL_stage uhcp_itemInv matches ..4 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/axe/5
execute if score @s uhcp_aug_tier matches 11..12 if score %sL_stage uhcp_itemInv matches ..5 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/axe/6
execute if score @s uhcp_aug_tier matches 13..14 if score %sL_stage uhcp_itemInv matches ..6 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/axe/7
execute if score @s uhcp_aug_tier matches 15..16 if score %sL_stage uhcp_itemInv matches ..7 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/axe/8
execute if score @s uhcp_aug_tier matches 17..19 if score %sL_stage uhcp_itemInv matches ..8 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/axe/9
execute if score @s uhcp_aug_tier matches 20.. if score %sL_stage uhcp_itemInv matches ..9 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/axe/10
