# Generate choices based on drop chance
tag @s remove reroll
execute as @s run loot replace entity @s hotbar.3 loot uhcp:augments/silver
execute as @s run loot replace entity @s hotbar.4 loot uhcp:augments/silver
execute as @s run loot replace entity @s hotbar.5 loot uhcp:augments/silver

execute as @s run loot replace entity @s hotbar.3 loot uhcp:augments/gold
execute as @s run loot replace entity @s hotbar.4 loot uhcp:augments/gold
execute as @s run loot replace entity @s hotbar.5 loot uhcp:augments/gold

execute as @s run loot replace entity @s hotbar.3 loot uhcp:augments/prismatic
execute as @s run loot replace entity @s hotbar.4 loot uhcp:augments/prismatic
execute as @s run loot replace entity @s hotbar.5 loot uhcp:augments/prismatic


# Check for duplicates, if there are duplicates, reroll options again
execute store result score .count MS_Count run data get entity @s Inventory[{Slot:3b}].Count
execute if score .count MS_Count matches 2.. run tag @s add reroll
execute store result score .count MS_Count run data get entity @s Inventory[{Slot:4b}].Count
execute if score .count MS_Count matches 2.. run tag @s add reroll

execute as @s[tag=reroll] run function uhcp:augments/createaugments