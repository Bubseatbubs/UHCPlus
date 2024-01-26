# Marker work
execute unless score %uhcp_dimXAbs uhcp_itemInv > %uhcp_dimWB uhcp_itemInv store result entity @s Pos[0] double 8 run data get entity @a[tag=UHCP_DimKick,limit=1] Pos[0]
execute unless score %uhcp_dimZAbs uhcp_itemInv > %uhcp_dimWB uhcp_itemInv store result entity @s Pos[2] double 8 run data get entity @a[tag=UHCP_DimKick,limit=1] Pos[2]
execute if score %uhcp_dimXAbs uhcp_itemInv > %uhcp_dimWB uhcp_itemInv run function uhcp:dimensions/close/dimension/nether/shrink_x
execute if score %uhcp_dimZAbs uhcp_itemInv > %uhcp_dimWB uhcp_itemInv run function uhcp:dimensions/close/dimension/nether/shrink_z
execute at @s run forceload add ~-2 ~-2 ~2 ~2
execute store success score %uhcp_dimSpread uhcp_itemInv at @s run spreadplayers ~ ~ 0 1 false @s
execute if score %uhcp_dimSpread uhcp_itemInv matches 0 at @s run tp @s ~ 64 ~
tp @a[tag=UHCP_DimKick] @s
tp @s 0 0 0
