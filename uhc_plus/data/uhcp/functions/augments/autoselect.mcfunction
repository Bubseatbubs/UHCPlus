##
# Ran if the player doesn't select an augment
##
tag @s remove UHCP_ChoosingItem
execute store result score @s uhcp_a_selectedAugment run function uhcp:augments/assign
clear @s

playsound block.note_block.chime master @s ~ ~ ~ 1 1 1
particle totem_of_undying ~ ~ ~ 0.5 0.5 0.5 1 100 normal
tellraw @a [{"selector":"@s","color":"blue"},{"text":" selected an augment!","color":"white"}]
