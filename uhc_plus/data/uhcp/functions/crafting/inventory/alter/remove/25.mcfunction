# Alter count in array position 25
execute store result storage uhcp:craft Inventory[25].Count byte 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
