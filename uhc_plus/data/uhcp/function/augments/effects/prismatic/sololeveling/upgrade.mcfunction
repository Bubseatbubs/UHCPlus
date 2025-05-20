# Find items to upgrade
execute as @s[tag=!UHCP_SLModify] run function uhcp:augments/effects/prismatic/sololeveling/storage
data modify storage uhcp:solo_level InventoryWork set from storage uhcp:solo_level Inventory
execute store result score %sL_slot uhcp_itemCount run data get storage uhcp:solo_level Inventory
execute if score %sL_slot uhcp_itemCount matches 1.. run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/search

# Remove tag
tag @s[tag=!UHCP_SLAxe,tag=!UHCP_SLBoots,tag=!UHCP_SLBow,tag=!UHCP_SLChest,tag=!UHCP_SLHelm,tag=!UHCP_SLHoe,tag=!UHCP_SLLegs,tag=!UHCP_SLPick,tag=!UHCP_SLShovel,tag=!UHCP_SLSword] remove UHCP_SLUpg
