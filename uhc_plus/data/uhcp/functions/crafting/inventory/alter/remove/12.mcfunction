# Alter count in array position 12
execute store result storage uhcp:craft Inventory[12].count int 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
