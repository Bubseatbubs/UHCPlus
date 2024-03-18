#>  uhcp:augments/autoselect
#   Runs if player didn't select an augment in time
#   Selects a random augment from their listed choices
#
# @within  uhcp:left/augments/select
# @within  uhcp:augments/countdown/1

tag @s remove UHCP_ChoosingItem

# Randomize selection
execute store result score %uhcp_augRoll uhcp_a_selectedAugment run random value 0..3
execute if score %uhcp_augRoll uhcp_a_selectedAugment matches 0 run function uhcp:augments/autoselect/3
execute if score %uhcp_augRoll uhcp_a_selectedAugment matches 1 run function uhcp:augments/autoselect/4
execute if score %uhcp_augRoll uhcp_a_selectedAugment matches 2 run function uhcp:augments/autoselect/5
execute if score %uhcp_augRoll uhcp_a_selectedAugment matches 2 run function uhcp:augments/autoselect/7
execute store result score @s uhcp_a_selectedAugment run function uhcp:augments/assign
clear @s

playsound block.note_block.chime master @s ~ ~ ~ 1 1 1
particle totem_of_undying ~ ~ ~ 0.5 0.5 0.5 1 100 normal
execute unless score @s uhcp_leave matches 1.. run tellraw @a [{"selector":"@s","color":"blue"},{"text":" selected an augment!","color":"white"}]
