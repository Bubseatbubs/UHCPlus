#>  uhcp:augments/validate
#   Ran when player selects an item (by checking if their inventory changed)
#   System to detect if a player moved an item to their armor/offhand slot during selection
#   Additionally checks if player throws an item out of their inventory
# @within  uhcp:augments/chosen_item

#declare advancement uhcp:augments/chosen_item

scoreboard players set @s uhcp_a_validSelection 0

# Check if item was thrown out of inventory, return item using 0s PickupDelay
execute if entity @e[predicate=uhcp:augments/choice_items,distance=..4] run scoreboard players set @s uhcp_a_validSelection 100
execute if score @s uhcp_a_validSelection matches 100 as @e[predicate=uhcp:augments/choice_items,distance=..4,sort=nearest,limit=1] run data modify entity @s PickupDelay set value 0s
execute if score @s uhcp_a_validSelection matches 100 run return 0

# Check if player's offhand or armor slots are filled
execute store success score @s[scores={uhcp_a_validSelection=0}] uhcp_a_validSelection if items entity @s armor.* #uhcp:wearable
execute at @s store success score @s[scores={uhcp_a_validSelection=0}] uhcp_a_validSelection run data get entity @s Inventory[{Slot:-106b}]

# Check if BSG was selected
execute store success score @s[scores={uhcp_a_validSelection=0}] uhcp_a_validSelection if items entity @s player.cursor minecraft:black_stained_glass_pane

# Based on if selection was valid, continue with optionselected, else return the item
execute as @s[scores={uhcp_a_validSelection=0},tag=!UHCP_DisableChoose] at @s run function uhcp:augments/optionselected
execute as @s[scores={uhcp_a_validSelection=1},tag=!UHCP_DisableChoose] at @s run function uhcp:augments/return
tag @s[tag=UHCP_DisableChoose] remove UHCP_DisableChoose

advancement revoke @s only uhcp:augments/chosen_item
