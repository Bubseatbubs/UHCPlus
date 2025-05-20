#>  uhcp:augments/assign
#   Assign augment value by grabbing the item from player's cursor
#
# @within  uhcp:augments/auto_select
# @within  uhcp:augments/select

item replace block 0 0 0 container.8 from entity @s player.cursor
return run data get block 0 0 0 Items[{Slot:8b}].components."minecraft:custom_data".augment
