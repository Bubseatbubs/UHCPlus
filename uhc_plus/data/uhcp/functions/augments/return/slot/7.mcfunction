#>  uhcp:augments/return/slot/7
#   Returns the player's items if they made a strange selection
#
# @within uhcp:augments/return

# Replace empty slot with item
execute if items entity @s armor.head * run item replace entity @s container.7 from entity @s armor.head
execute if items entity @s armor.chest * run item replace entity @s container.7 from entity @s armor.chest
execute if items entity @s armor.legs * run item replace entity @s container.7 from entity @s armor.legs
execute if items entity @s armor.feet * run item replace entity @s container.7 from entity @s armor.feet
execute if items entity @s weapon.offhand * run item replace entity @s container.7 from entity @s weapon.offhand
