#>  uhcp:augments/assign
#   Assign augment value by grabbing the item from player's cursor
#
# @within  uhcp:augments/autoselect
# @within  uhcp:augments/optionselected

execute in uhcp:main run item replace block 0 0 0 container.8 from entity @s player.cursor
execute in uhcp:main store result score @s uhcp_augment run data get block 0 0 0 Items[{Slot:8b}].components."minecraft:custom_data".augment
clear @s
