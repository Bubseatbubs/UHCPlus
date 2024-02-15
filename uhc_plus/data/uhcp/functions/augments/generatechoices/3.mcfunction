# Check for duplicates in pool of three augments
data modify storage uhcp:augments Roll append from entity @s Inventory[{Slot:3b}].tag.augment
data modify storage uhcp:augments Roll append from entity @s Inventory[{Slot:4b}].tag.augment
data modify storage uhcp:augments Roll append from entity @s Inventory[{Slot:5b}].tag.augment
data modify storage uhcp:augments Roll append from storage uhcp:augments Roll[2]
execute store success score %uhcp_duplicate uhcp_itemCount run data modify storage uhcp:augments Roll[2] set from storage uhcp:augments Roll[0]
execute if score %uhcp_duplicate uhcp_itemCount matches 0 run tag @s add Aug_Reroll
execute store success score %uhcp_duplicate uhcp_itemCount run data modify storage uhcp:augments Roll[0] set from storage uhcp:augments Roll[1]
execute if score %uhcp_duplicate uhcp_itemCount matches 0 run tag @s add Aug_Reroll
execute store success score %uhcp_duplicate uhcp_itemCount run data modify storage uhcp:augments Roll[3] set from storage uhcp:augments Roll[1]
execute if score %uhcp_duplicate uhcp_itemCount matches 0 run tag @s add Aug_Reroll
