# Alter count in array position 1
execute store result storage uhcp:craft Inventory[1].count int 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
