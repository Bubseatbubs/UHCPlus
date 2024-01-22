# Alter count in array position 26
execute store result storage minecraft:uhcp_ender_eye Inventory[26].Count byte 1 run scoreboard players get %uhcp_ender_eyeLow uhcp_itemCount
