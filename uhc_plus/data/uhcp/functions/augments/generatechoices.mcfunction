##
# Generate augment choices
##

tag @s remove Aug_Reroll

scoreboard players set @s uhcp_a_choosingAugment 1
execute if score %tier uhcp_a_tier matches 0 run function uhcp:augments/silver
execute if score %tier uhcp_a_tier matches 1 run function uhcp:augments/gold
execute if score %tier uhcp_a_tier matches 2 run function uhcp:augments/prismatic
scoreboard players set @s uhcp_a_choosingAugment 0

# Check for duplicates. If there are duplicates, reroll options.
data remove storage uhcp:augments Roll
data modify storage uhcp:augments Roll append from entity @s Inventory[{Slot:3b}].tag.augment
data modify storage uhcp:augments Roll append from entity @s Inventory[{Slot:4b}].tag.augment
data modify storage uhcp:augments Roll append from entity @s Inventory[{Slot:5b}].tag.augment
data modify storage uhcp:augments Roll append from entity @s Inventory[{Slot:7b}].tag.augment
data modify storage uhcp:augments Roll append from storage uhcp:augments Roll[2]
execute store success score %uhcp_duplicate uhcp_itemCount run data modify storage uhcp:augments Roll[2] set from storage uhcp:augments Roll[0]
execute if score %uhcp_duplicate uhcp_itemCount matches 0 run tag @s add Aug_Reroll
execute store success score %uhcp_duplicate uhcp_itemCount run data modify storage uhcp:augments Roll[0] set from storage uhcp:augments Roll[1]
execute if score %uhcp_duplicate uhcp_itemCount matches 0 run tag @s add Aug_Reroll
execute store success score %uhcp_duplicate uhcp_itemCount run data modify storage uhcp:augments Roll[3] set from storage uhcp:augments Roll[1]
execute if score %uhcp_duplicate uhcp_itemCount matches 0 run tag @s add Aug_Reroll

execute as @s[tag=Aug_Reroll] run function uhcp:augments/generatechoices
