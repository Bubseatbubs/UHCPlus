# Alter count in array position 16
execute store result storage uhcp:craft Inventory[16].Count byte 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
