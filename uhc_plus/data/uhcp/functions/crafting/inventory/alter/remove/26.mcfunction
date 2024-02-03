# Alter count in array position 26
execute store result storage uhcp:craft Inventory[26].Count byte 1 run scoreboard players get %uhcp_itemLow uhcp_itemCount
