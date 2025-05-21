#>  uhcp:augments/validate
#   Run when player selects an item (by checking if their inventory changed)
#   System to detect if a player moved an item to their offhand slot during selection
#   Additional checks and fallback strategy
#   Fallback accounts for items thrown by player
# @within  uhcp:augments/chosen_item

#declare advancement uhcp:augments/chosen_item

# Case: item clicked on
execute if items entity @s player.cursor * run return run function uhcp:augments/cursor

# Case: item moved to offhand slot
execute if items entity @s weapon.offhand * run return run function uhcp:augments/offhand

# Case: augment selection item is swapped with glass pane in hotbar; return items to proper slots
execute if items entity @s container.0 *[minecraft:custom_data~{uhcp_augSelect:1b}] run return run function uhcp:augments/return/0
execute if items entity @s container.1 *[minecraft:custom_data~{uhcp_augSelect:1b}] run return run function uhcp:augments/return/1
execute if items entity @s container.2 *[minecraft:custom_data~{uhcp_augSelect:1b}] run return run function uhcp:augments/return/2
execute if items entity @s container.6 *[minecraft:custom_data~{uhcp_augSelect:1b}] run return run function uhcp:augments/return/6
execute if items entity @s container.8 *[minecraft:custom_data~{uhcp_augSelect:1b}] run return run function uhcp:augments/return/8
execute unless score %patrons uhcp_settings matches 1 if items entity @s container.7 *[minecraft:custom_data~{uhcp_augSelect:1b}] run return run function uhcp:augments/return/7

# Case: inventory was changed in another manner; regenerate player inventory from scratch
item replace entity @s player.crafting.0 with minecraft:air
item replace entity @s player.crafting.1 with minecraft:air
item replace entity @s player.crafting.2 with minecraft:air
item replace entity @s player.crafting.3 with minecraft:air
function uhcp:augments/generate/panes

tag @s add UHCP_LoadAugment
function uhcp:augments/current_store
function uhcp:augments/reroll/items/1
function uhcp:augments/reroll/items/2
function uhcp:augments/reroll/items/3
execute if score %patrons uhcp_settings matches 1 run item replace entity @s container.7 from entity @e[tag=UHCP_CurrentStoreAugment,limit=1] container.3
tag @e remove UHCP_CurrentStoreAugment
tag @s remove UHCP_LoadAugment

# Kill augment selection menu items
kill @e[type=minecraft:item,predicate=uhcp:augments/choice_items,distance=..4]

# Finalize
function uhcp:augments/retry
