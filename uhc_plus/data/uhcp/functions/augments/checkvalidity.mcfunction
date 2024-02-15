##
# Ran when player selects an item (by checking if their inventory changed)
# System to detect if a player moved an item to their armor/offhand slot during selection
# Additionally checks if player throws an item out of their inventory
# Returns item to correct slot if this is the case
# Does not check for if player clicked on BSG (that is a little later)
##

scoreboard players set @s uhcp_a_validSelection 0

# Check if item was thrown out of inventory, return item using 0s PickupDelay
execute if entity @e[predicate=uhcp:augments/choice_items,distance=..4] run scoreboard players set @s uhcp_a_validSelection 100
execute if score @s uhcp_a_validSelection matches 100 as @e[predicate=uhcp:augments/choice_items,distance=..4,sort=nearest,limit=1] run data modify entity @s PickupDelay set value 0s
execute if score @s uhcp_a_validSelection matches 100 run return 0

# Check if player's offhand or armor slots are filled
execute at @s store success score @s[scores={uhcp_a_validSelection=0}] uhcp_a_validSelection run data get entity @s Inventory[{Slot:100b}]
execute at @s store success score @s[scores={uhcp_a_validSelection=0}] uhcp_a_validSelection run data get entity @s Inventory[{Slot:101b}]
execute at @s store success score @s[scores={uhcp_a_validSelection=0}] uhcp_a_validSelection run data get entity @s Inventory[{Slot:102b}]
execute at @s store success score @s[scores={uhcp_a_validSelection=0}] uhcp_a_validSelection run data get entity @s Inventory[{Slot:103b}]
execute at @s store success score @s[scores={uhcp_a_validSelection=0}] uhcp_a_validSelection run data get entity @s Inventory[{Slot:-106b}]

# Add items to barrel, in case BSG was selected
execute in uhcp:main run setblock 0 0 0 barrel
execute in uhcp:main as @s run item replace block 0 0 0 container.0 from entity @s hotbar.3
execute in uhcp:main as @s run item replace block 0 0 0 container.1 from entity @s hotbar.4
execute in uhcp:main as @s run item replace block 0 0 0 container.2 from entity @s hotbar.5
execute in uhcp:main as @s run item replace block 0 0 0 container.3 from entity @s hotbar.7

# Based on if selection was valid, continue with optionselected, else return the item
execute as @s[scores={uhcp_a_validSelection=0},tag=!UHCP_DisableChoose] at @s run function uhcp:augments/optionselected
execute as @s[scores={uhcp_a_validSelection=1},tag=!UHCP_DisableChoose] at @s run function uhcp:augments/returnitem
tag @s[tag=UHCP_DisableChoose] remove UHCP_DisableChoose

advancement revoke @s only uhcp:augments/chosenitem
