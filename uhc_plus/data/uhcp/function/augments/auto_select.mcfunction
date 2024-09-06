#>  uhcp:augments/auto_select
#   Runs if player didn't select an augment in time
#   Selects a random augment from their listed choices
#
# @within  uhcp:augments/countdown
# @within  uhcp:left/in_game/augment_select

tag @s remove UHCP_ChoosingItem

# Randomize selection
execute store result score @s uhcp_initStatus run function uhcp:augments/generate/slot
function uhcp:augments/generate/choice
execute in uhcp:main store result score @s uhcp_augment run function uhcp:augments/assign
clear @s

playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1
particle minecraft:totem_of_undying ~ ~ ~ 0.5 0.5 0.5 1 100 normal
tellraw @a [{"selector":"@s","color":"blue"},{"text":" selected an augment!","color":"white"}]
