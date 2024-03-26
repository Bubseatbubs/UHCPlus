# Shrink Z
scoreboard players set %dim_math uhcp_itemInv 1
execute if score %dim_z uhcp_itemInv matches ..-1 run scoreboard players set %dim_math uhcp_itemInv -1
scoreboard players operation %dim_z uhcp_itemInv = %dim_wb uhcp_itemInv
execute if score %dim_wb uhcp_itemInv matches 2.. run scoreboard players remove %dim_z uhcp_itemInv 3
scoreboard players operation %dim_z uhcp_itemInv *= %dim_math uhcp_itemInv
execute store result entity @s Pos[2] double 1 run scoreboard players get %dim_z uhcp_itemInv
