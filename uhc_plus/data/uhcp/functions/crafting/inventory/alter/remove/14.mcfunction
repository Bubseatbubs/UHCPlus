# Alter count in array position 14
execute store result storage uhcp:craft Inventory[14].Count byte 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
