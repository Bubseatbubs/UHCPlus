#>  uhcp:augments/return
#   Returns the player's items if they made a strange selection
#
# @within uhcp:augments/validate

tag @s add UHCP_DisableChoose
execute at @s run playsound block.note_block.snare master @s ~ ~ ~ 1 1 1

# Find slot item moved from
execute unless items entity @s container.3 * run function uhcp:augments/return/slot/3
execute unless items entity @s container.4 * run function uhcp:augments/return/slot/4
execute unless items entity @s container.5 * run function uhcp:augments/return/slot/5
execute unless items entity @s container.7 * run function uhcp:augments/return/slot/7

# Clear potentially filled slots
item replace entity @s armor.head with minecraft:air
item replace entity @s armor.chest with minecraft:air
item replace entity @s armor.legs with minecraft:air
item replace entity @s armor.feet with minecraft:air
item replace entity @s weapon.offhand with minecraft:air

# Reform Glass
clear @s minecraft:black_stained_glass_pane
function uhcp:augments/generate/panes
