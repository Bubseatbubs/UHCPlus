# Shrink Z
scoreboard players set %uhcp_dimMath uhcp_itemInv 1
execute if score %uhcp_dimZ uhcp_itemInv matches ..-1 run scoreboard players set %uhcp_dimMath uhcp_itemInv -1
scoreboard players operation %uhcp_dimZ uhcp_itemInv = %uhcp_dimWB uhcp_itemInv
execute if score %uhcp_dimWB uhcp_itemInv matches 2.. run scoreboard players remove %uhcp_dimZ uhcp_itemInv 3
scoreboard players operation %uhcp_dimZ uhcp_itemInv *= %uhcp_dimMath uhcp_itemInv
execute store result entity @s Pos[2] double 1 run scoreboard players get %uhcp_dimZ uhcp_itemInv
