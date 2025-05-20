# Kick player out of Nether
tag @s add UHCP_DimKick
execute store result score %dim_x uhcp_itemInv run data get entity @s Pos[0]
execute store result score %dim_z uhcp_itemInv run data get entity @s Pos[2]
scoreboard players set %dim_math uhcp_itemInv 8
scoreboard players operation %dim_x uhcp_itemInv *= %dim_math uhcp_itemInv
scoreboard players operation %dim_z uhcp_itemInv *= %dim_math uhcp_itemInv
execute store result score %dim_wb uhcp_itemInv run worldborder get
scoreboard players set %dim_math uhcp_itemInv 2
execute unless score %dim_wb uhcp_itemInv matches ..2 run scoreboard players operation %dim_wb uhcp_itemInv /= %dim_math uhcp_itemInv
scoreboard players operation %dim_x_abs uhcp_itemInv = %dim_x uhcp_itemInv
scoreboard players operation %dim_z_abs uhcp_itemInv = %dim_z uhcp_itemInv
scoreboard players set %dim_math uhcp_itemInv -1
execute if score %dim_x uhcp_itemInv matches ..-1 run scoreboard players operation %dim_x_abs uhcp_itemInv *= %dim_math uhcp_itemInv
execute if score %dim_z uhcp_itemInv matches ..-1 run scoreboard players operation %dim_z_abs uhcp_itemInv *= %dim_math uhcp_itemInv
execute as @e[tag=UHCP_DimWork] run function uhcp:dimensions/close/dimension/nether/marker
execute at @s run forceload remove ~-5 ~-5 ~5 ~5
tellraw @s {"text":"You have been moved to the overworld.","color":"red"}
tag @s remove UHCP_DimKick
