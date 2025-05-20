# Remove normal tool
tag @e[tag=UHCP_SLDrop] remove UHCP_SLDrop
summon minecraft:item ~ ~1 ~ {PickupDelay:40s,Tags:["UHCP_SLDrop"],Item:{id:"minecraft:stick"}}

execute if score %sL_slot uhcp_itemCount matches 0..7 run function uhcp:augments/effects/prismatic/sololeveling/inventory/compare/remove/branches/1
execute if score %sL_slot uhcp_itemCount matches 8..15 run function uhcp:augments/effects/prismatic/sololeveling/inventory/compare/remove/branches/2
execute if score %sL_slot uhcp_itemCount matches 16..23 run function uhcp:augments/effects/prismatic/sololeveling/inventory/compare/remove/branches/3
execute if score %sL_slot uhcp_itemCount matches 24..31 run function uhcp:augments/effects/prismatic/sololeveling/inventory/compare/remove/branches/4
execute if score %sL_slot uhcp_itemCount matches 32..40 run function uhcp:augments/effects/prismatic/sololeveling/inventory/compare/remove/branches/5

# Lower slot position
tag @e[tag=UHCP_SLDrop] remove UHCP_SLDrop
