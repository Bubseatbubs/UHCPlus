#>  uhcp:augments/optionselected
#   Reset player's inventory and give them a score based on their remaining item
#
# @within  uhcp:augments/validate

tag @s remove UHCP_ChoosingItem

playsound block.note_block.chime master @s ~ ~ ~ 1 1 1
particle totem_of_undying ~ ~ ~ 0.5 0.5 0.5 1 100 normal
tellraw @a [{"selector":"@s","color":"blue"},{"text":" selected an augment!","color":"white"}]

execute as @s at @s store result score @s uhcp_a_selectedAugment run function uhcp:augments/assign
