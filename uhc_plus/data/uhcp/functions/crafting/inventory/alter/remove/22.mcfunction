# Alter count in array position 22
execute store result storage uhcp:craft Inventory[22].count int 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
