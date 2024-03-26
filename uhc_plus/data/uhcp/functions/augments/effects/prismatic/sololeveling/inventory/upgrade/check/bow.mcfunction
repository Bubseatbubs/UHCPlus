# Upgrade if necessary
execute store result score %sL_stage uhcp_itemInv run data get storage uhcp:solo_level InventoryWork[-1].components."minecraft:custom_data".solo_stage
execute if score @s uhcp_a_tier matches 7..10 if score %sL_stage uhcp_itemInv matches ..0 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/bow/1
execute if score @s uhcp_a_tier matches 11..14 if score %sL_stage uhcp_itemInv matches ..1 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/bow/2
execute if score @s uhcp_a_tier matches 15..19 if score %sL_stage uhcp_itemInv matches ..2 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/bow/3
execute if score @s uhcp_a_tier matches 20.. if score %sL_stage uhcp_itemInv matches ..3 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/bow/4
