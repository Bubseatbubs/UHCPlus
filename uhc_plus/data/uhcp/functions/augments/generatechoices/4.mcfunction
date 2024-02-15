# Check for duplicates in pool of four augments
data modify storage uhcp:augments Roll append from entity @s Inventory[{Slot:3b}].tag.augment
data modify storage uhcp:augments Roll append from entity @s Inventory[{Slot:4b}].tag.augment
data modify storage uhcp:augments Roll append from entity @s Inventory[{Slot:5b}].tag.augment
data modify storage uhcp:augments Roll append from entity @s Inventory[{Slot:7b}].tag.augment
data modify storage uhcp:augments Roll append from storage uhcp:augments Roll[2]
data modify storage uhcp:augments Roll append from storage uhcp:augments Roll[3]
execute store success score %uhcp_duplicate uhcp_itemCount run data modify storage uhcp:augments Roll[2] set from storage uhcp:augments Roll[0]
execute if score %uhcp_duplicate uhcp_itemCount matches 0 run return 1
execute store success score %uhcp_duplicate uhcp_itemCount run data modify storage uhcp:augments Roll[3] set from storage uhcp:augments Roll[0]
execute if score %uhcp_duplicate uhcp_itemCount matches 0 run return 1
execute store success score %uhcp_duplicate uhcp_itemCount run data modify storage uhcp:augments Roll[0] set from storage uhcp:augments Roll[1]
execute if score %uhcp_duplicate uhcp_itemCount matches 0 run return 1
execute store success score %uhcp_duplicate uhcp_itemCount run data modify storage uhcp:augments Roll[0] set from storage uhcp:augments Roll[4]
execute if score %uhcp_duplicate uhcp_itemCount matches 0 run return 1
execute store success score %uhcp_duplicate uhcp_itemCount run data modify storage uhcp:augments Roll[1] set from storage uhcp:augments Roll[5]
execute if score %uhcp_duplicate uhcp_itemCount matches 0 run return 1
execute store success score %uhcp_duplicate uhcp_itemCount run data modify storage uhcp:augments Roll[5] set from storage uhcp:augments Roll[4]
execute if score %uhcp_duplicate uhcp_itemCount matches 0 run return 1

# Comparisons:
# 0,2: 2 < 0
# 0,3: 3 < 0
# 0,1: 0 < 1
# 1,2: 0(1) < 4(2)
# 1,3: 1 < 5(3)
# 2,3: 5(3) < 4(2)
