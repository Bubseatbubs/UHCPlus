# Alter count in array position 7
execute store result storage minecraft:uhcp_ender_eye Inventory[7].Count byte 1 run scoreboard players get %uhcp_ender_eyeLow uhcp_itemCount
