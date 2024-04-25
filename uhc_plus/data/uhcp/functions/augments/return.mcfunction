#>  uhcp:augments/return
#   Returns the player's items if they made a strange selection
#
# @within uhcp:augments/validate

tag @s add UHCP_DisableChoose

# Find slot item moved from
execute unless items entity @s container.3 * run function uhcp:augments/return/slot/3
execute unless items entity @s container.4 * run function uhcp:augments/return/slot/4
execute unless items entity @s container.5 * run function uhcp:augments/return/slot/5
execute if score %patrons uhcp_settings matches 1 unless items entity @s container.7 * run function uhcp:augments/return/slot/7

# Reform Glass
item replace entity @s armor.head with minecraft:air
item replace entity @s armor.chest with minecraft:air
item replace entity @s armor.legs with minecraft:air
item replace entity @s armor.feet with minecraft:air
item replace entity @s player.cursor with minecraft:air
item replace entity @s weapon.offhand with minecraft:air
function uhcp:augments/generate/panes
