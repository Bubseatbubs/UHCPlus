# Marker work
execute unless score %dim_x_abs uhcp_itemInv > %dim_wb uhcp_itemInv store result entity @s Pos[0] double 8 run data get entity @a[tag=UHCP_DimKick,limit=1] Pos[0]
execute unless score %dim_z_abs uhcp_itemInv > %dim_wb uhcp_itemInv store result entity @s Pos[2] double 8 run data get entity @a[tag=UHCP_DimKick,limit=1] Pos[2]
execute if score %dim_x_abs uhcp_itemInv > %dim_wb uhcp_itemInv run function uhcp:dimensions/close/dimension/nether/shrink_x
execute if score %dim_z_abs uhcp_itemInv > %dim_wb uhcp_itemInv run function uhcp:dimensions/close/dimension/nether/shrink_z
execute at @s run forceload add ~-2 ~-2 ~2 ~2
execute store success score %dim_spread uhcp_itemInv at @s run spreadplayers ~ ~ 0 1 false @s
execute if score %dim_spread uhcp_itemInv matches 0 at @s run function uhcp:dimensions/close/dimension/failure
tp @a[tag=UHCP_DimKick] @s
tp @s 0 0 0
