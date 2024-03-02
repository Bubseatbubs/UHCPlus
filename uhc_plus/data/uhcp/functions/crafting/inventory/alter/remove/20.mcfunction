# Alter count in array position 20
execute store result storage uhcp:craft Inventory[20].count int 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
