# Alter count in array position 34
execute store result storage uhcp:craft Inventory[34].count int 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
