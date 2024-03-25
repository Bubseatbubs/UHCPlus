#>  uhcp:augments/return
#   Returns the player's items if they made a strange selection
#
# @within uhcp:augments/validate

tag @s add UHCP_DisableChoose
setblock 0 0 0 minecraft:barrel
execute at @s run playsound block.note_block.snare master @s ~ ~ ~ 1 1 1

# Add item to barrel
execute if items entity @s armor.head * run item replace block 0 0 0 container.0 from entity @s armor.head
execute if items entity @s armor.chest * run item replace block 0 0 0 container.0 from entity @s armor.chest
execute if items entity @s armor.legs * run item replace block 0 0 0 container.0 from entity @s armor.legs
execute if items entity @s armor.feet * run item replace block 0 0 0 container.0 from entity @s armor.feet
execute if items entity @s weapon.offhand * run item replace block 0 0 0 container.0 from entity @s weapon.offhand

# Replace empty slot with item
execute unless items entity @s container.3 * run item replace entity @s container.3 from block 0 0 0 container.0
execute unless items entity @s container.4 * run item replace entity @s container.4 from block 0 0 0 container.0
execute unless items entity @s container.5 * run item replace entity @s container.5 from block 0 0 0 container.0
execute unless items entity @s container.7 * run item replace entity @s container.7 from block 0 0 0 container.0

# Clear filled slots
item replace entity @s armor.head with minecraft:air
item replace entity @s armor.chest with minecraft:air
item replace entity @s armor.legs with minecraft:air
item replace entity @s armor.feet with minecraft:air
item replace entity @s weapon.offhand with minecraft:air

# Reform Glass
clear @s minecraft:black_stained_glass_pane
function uhcp:augments/generate/panes
