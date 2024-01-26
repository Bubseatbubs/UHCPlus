# Kick player out of Nether
tag @s add UHCP_DimKick
execute store result score %uhcp_dimX uhcp_itemInv run data get entity @s Pos[0]
execute store result score %uhcp_dimZ uhcp_itemInv run data get entity @s Pos[2]
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
execute as @e[tag=UHCP_DimWork] run function uhcp:dimensions/close/dimension/nether/marker
execute at @s run forceload remove ~-5 ~-5 ~5 ~5
tellraw @s {"text":"You have been moved to the overworld.","color":"red"}
tag @s remove UHCP_DimKick
