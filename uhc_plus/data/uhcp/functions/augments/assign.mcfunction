##
# Assign augment value based on the item left in player's inventory
##

# Gold Augments
execute in uhcp:main run item replace block 0 0 0 container.8 from entity @s player.cursor
execute in uhcp:main run execute store result score @s uhcp_a_selectedAugment run data get block 0 0 0 Items[-1].components."minecraft:custom_data".augment
clear @s
