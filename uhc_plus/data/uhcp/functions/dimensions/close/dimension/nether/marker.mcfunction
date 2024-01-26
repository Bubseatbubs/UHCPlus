# Marker work
execute store result entity @s Pos[0] double 8 run data get entity @a[tag=UHCP_DimKick,limit=1] Pos[0]
execute store result entity @s Pos[2] double 8 run data get entity @a[tag=UHCP_DimKick,limit=1] Pos[2]
execute store result score %uhcp_dimX uhcp_itemInv run data get entity @a[tag=UHCP_DimKick,limit=1] Pos[0]
execute store result score %uhcp_dimZ uhcp_itemInv run data get entity @a[tag=UHCP_DimKick,limit=1] Pos[2]
scoreboard players set %uhcp_dimMath uhcp_itemInv 8
scoreboard players operation %uhcp_dimX uhcp_itemInv *= %uhcp_dimMath uhcp_itemInv
scoreboard players operation %uhcp_dimZ uhcp_itemInv *= %uhcp_dimMath uhcp_itemInv
execute store result score %uhcp_dimWB uhcp_itemInv run worldborder get
scoreboard players set %uhcp_dimMath uhcp_itemInv 2
execute unless score %uhcp_dimWB uhcp_itemInv matches ..2 run scoreboard players operation %uhcp_dimWB uhcp_itemInv /= %uhcp_dimMath uhcp_itemInv
scoreboard players operation %uhcp_dimXAbs uhcp_itemInv = %uhcp_dimX uhcp_itemInv
scoreboard players operation %uhcp_dimZAbs uhcp_itemInv = %uhcp_dimZ uhcp_itemInv
scoreboard players set %uhcp_dimMath uhcp_itemInv -1
execute if score %uhcp_dimX uhcp_itemInv matches ..-1 run scoreboard players operation %uhcp_dimXAbs uhcp_itemInv *= %uhcp_dimMath uhcp_itemInv
execute if score %uhcp_dimZ uhcp_itemInv matches ..-1 run scoreboard players operation %uhcp_dimZAbs uhcp_itemInv *= %uhcp_dimMath uhcp_itemInv
execute if score %uhcp_dimXAbs uhcp_itemInv > %uhcp_dimWB uhcp_itemInv run function uhcp:dimensions/close/dimension/nether/shrink_x
execute if score %uhcp_dimZAbs uhcp_itemInv > %uhcp_dimWB uhcp_itemInv run function uhcp:dimensions/close/dimension/nether/shrink_z
execute at @s run forceload add ~-2 ~-2 ~2 ~2
execute store success score %uhcp_dimSpread uhcp_itemInv at @s run spreadplayers ~ ~ 0 1 false @s
execute if score %uhcp_dimSpread uhcp_itemInv matches 0 at @s run tp @s ~ 64 ~
tp @a[tag=UHCP_DimKick] @s
tp @s 0 0 0
