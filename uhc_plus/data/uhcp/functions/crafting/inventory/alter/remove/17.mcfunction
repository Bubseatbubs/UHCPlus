# Alter count in array position 17
execute store result storage uhcp:craft Inventory[17].count int 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
