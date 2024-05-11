#>  uhcp:augments/validate
#   Ran when player selects an item (by checking if their inventory changed)
#   System to detect if a player moved an item to their armor/offhand slot during selection
#   Additionally checks if player throws an item out of their inventory
# @within  uhcp:augments/chosen_item

#declare advancement uhcp:augments/chosen_item

scoreboard players set @s uhcp_aug_validSelection 0

# Case: reroll was selected; begin reroll process
execute if items entity @s player.cursor *[minecraft:custom_data~{uhcp_reroll:1b}] run return run function uhcp:augments/reroll

# Kill selection items
kill @e[predicate=uhcp:augments/choice_items,distance=..4]

# Case: player's offhand or armor slots are filled; return to player
execute store success score @s[scores={uhcp_aug_validSelection=0}] uhcp_aug_validSelection if items entity @s armor.* #uhcp:wearable
execute store success score @s[scores={uhcp_aug_validSelection=0}] uhcp_aug_validSelection if items entity @s weapon.offhand *

# Case: augment selection item is in slot containing black stained glass pane; return to proper slot
execute unless items entity @s container.0 *[minecraft:custom_data~{uhcp_glass:1b}] if items entity @s container.0 * run scoreboard players set @s uhcp_aug_validSelection 2
execute unless items entity @s container.1 *[minecraft:custom_data~{uhcp_glass:1b}] if items entity @s container.1 * run scoreboard players set @s uhcp_aug_validSelection 3
execute unless items entity @s container.2 *[minecraft:custom_data~{uhcp_glass:1b}] if items entity @s container.2 * run scoreboard players set @s uhcp_aug_validSelection 4
execute unless items entity @s container.6 *[minecraft:custom_data~{uhcp_glass:1b}] if items entity @s container.6 * run scoreboard players set @s uhcp_aug_validSelection 5
execute unless items entity @s container.8 *[minecraft:custom_data~{uhcp_glass:1b}] if items entity @s container.8 * run scoreboard players set @s uhcp_aug_validSelection 6

# Case: clicked on glass pane
execute if items entity @s player.cursor *[minecraft:custom_data~{uhcp_panes:1b}] run scoreboard players set @s uhcp_aug_validSelection 7

# Case: inventory was changed in some manner that didn't involve clicking on a valid item; regenerate player inventory
execute if score @s uhcp_aug_validSelection matches 0 unless items entity @s player.cursor *[!minecraft:custom_data~{uhcp_panes:1b}] run scoreboard players set @s uhcp_aug_validSelection 8

# If no cases were met, continue with optionselected, else handle case
execute if score @s uhcp_aug_validSelection matches 1.. run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1 1
execute as @s[scores={uhcp_aug_validSelection=0},tag=!UHCP_DisableChoose] run function uhcp:augments/optionselected
execute as @s[scores={uhcp_aug_validSelection=1},tag=!UHCP_DisableChoose] run function uhcp:augments/return
execute as @s[scores={uhcp_aug_validSelection=2..6},tag=!UHCP_DisableChoose] run function uhcp:augments/return/swap
execute as @s[scores={uhcp_aug_validSelection=7},tag=!UHCP_DisableChoose] run function uhcp:augments/panes
execute as @s[scores={uhcp_aug_validSelection=8},tag=!UHCP_DisableChoose] run function uhcp:augments/regenerate
tag @s remove UHCP_DisableChoose

advancement revoke @s only uhcp:augments/chosen_item
