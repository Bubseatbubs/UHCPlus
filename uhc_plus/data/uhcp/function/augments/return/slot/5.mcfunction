#>  uhcp:augments/return/slot/5
#   Returns the player's items if they made a strange selection
#
# @within uhcp:augments/return

# Replace empty slot with item
execute if items entity @s armor.head * run return run item replace entity @s container.5 from entity @s armor.head
execute if items entity @s armor.chest * run return run item replace entity @s container.5 from entity @s armor.chest
execute if items entity @s armor.legs * run return run item replace entity @s container.5 from entity @s armor.legs
execute if items entity @s armor.feet * run return run item replace entity @s container.5 from entity @s armor.feet
execute if items entity @s weapon.offhand * run item replace entity @s container.5 from entity @s weapon.offhand
