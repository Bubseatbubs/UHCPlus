# Directly set position
execute store result entity @s Pos[1] double 0.001 run scoreboard players get @s uhcp_itemInv
scoreboard players reset @s uhcp_itemCount
