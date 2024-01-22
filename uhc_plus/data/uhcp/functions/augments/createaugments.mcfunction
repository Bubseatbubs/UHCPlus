# Generate choices based on drop chance
tag @s remove reroll
execute if score %tier uhcp_a_tier matches 0 run loot replace entity @s hotbar.3 loot uhcp:augments/silver
execute if score %tier uhcp_a_tier matches 0 run loot replace entity @s hotbar.4 loot uhcp:augments/silver
execute if score %tier uhcp_a_tier matches 0 run loot replace entity @s hotbar.5 loot uhcp:augments/silver

execute if score %tier uhcp_a_tier matches 1 run loot replace entity @s hotbar.3 loot uhcp:augments/gold
execute if score %tier uhcp_a_tier matches 1 run loot replace entity @s hotbar.4 loot uhcp:augments/gold
execute if score %tier uhcp_a_tier matches 1 run loot replace entity @s hotbar.5 loot uhcp:augments/gold

execute if score %tier uhcp_a_tier matches 2 run loot replace entity @s hotbar.3 loot uhcp:augments/prismatic
execute if score %tier uhcp_a_tier matches 2 run loot replace entity @s hotbar.4 loot uhcp:augments/prismatic
execute if score %tier uhcp_a_tier matches 2 run loot replace entity @s hotbar.5 loot uhcp:augments/prismatic


# Check for duplicates, if there are duplicates, reroll options again
execute store result score %count uhcp_a_count run data get entity @s Inventory[{Slot:3b}].Count
execute if score %count uhcp_a_count matches 2.. run tag @s add reroll
execute store result score %count uhcp_a_count run data get entity @s Inventory[{Slot:4b}].Count
execute if score %count uhcp_a_count matches 2.. run tag @s add reroll

execute as @s[tag=reroll] run function uhcp:augments/createaugments