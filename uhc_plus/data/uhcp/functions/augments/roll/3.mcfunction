# Check for duplicates in pool of three augments
data modify storage uhcp:augments Roll append from entity @s Inventory[{Slot:3b}].components."minecraft:custom_data".augment
data modify storage uhcp:augments Roll append from entity @s Inventory[{Slot:4b}].components."minecraft:custom_data".augment
data modify storage uhcp:augments Roll append from entity @s Inventory[{Slot:5b}].components."minecraft:custom_data".augment
data modify storage uhcp:augments Roll append from storage uhcp:augments Roll[2]
execute store success score %augment_duplicate uhcp_itemCount run data modify storage uhcp:augments Roll[2] set from storage uhcp:augments Roll[0]
execute if score %augment_duplicate uhcp_itemCount matches 0 run return 1
execute store success score %augment_duplicate uhcp_itemCount run data modify storage uhcp:augments Roll[0] set from storage uhcp:augments Roll[1]
execute if score %augment_duplicate uhcp_itemCount matches 0 run return 1
execute store success score %augment_duplicate uhcp_itemCount run data modify storage uhcp:augments Roll[3] set from storage uhcp:augments Roll[1]
execute if score %augment_duplicate uhcp_itemCount matches 0 run return 1

# Comparisons:
# 0,2: 2 < 0
# 0,1: 0 < 1
# 1,2: 3(2) < 1
