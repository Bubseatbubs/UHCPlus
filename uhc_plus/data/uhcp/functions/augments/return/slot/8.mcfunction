#>  uhcp:augments/return/slot/8
#   Returns the player's items if they made a strange selection
#
# @within uhcp:augments/return/swap

# Move item back
execute if score @s uhcp_itemInv matches 3 run item replace entity @s container.3 from entity @s container.8
execute if score @s uhcp_itemInv matches 4 run item replace entity @s container.4 from entity @s container.8
execute if score @s uhcp_itemInv matches 5 run item replace entity @s container.5 from entity @s container.8
execute if score @s uhcp_itemInv matches 7 run item replace entity @s container.7 from entity @s container.8
