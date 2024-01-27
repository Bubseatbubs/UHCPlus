##
# If player's selection is valid, this function is ran to reset player's inventory and give them a score based on their remaining item
##

tag @s remove UHCP_ChoosingItem

# clear all items (without removing their held item)
item replace entity @s container.0 with air
item replace entity @s container.1 with air
item replace entity @s container.2 with air
item replace entity @s container.3 with air
item replace entity @s container.4 with air
item replace entity @s container.5 with air
item replace entity @s container.6 with air
item replace entity @s container.7 with air
item replace entity @s container.8 with air
item replace entity @s container.9 with air
item replace entity @s container.10 with air
item replace entity @s container.11 with air
item replace entity @s container.12 with air
item replace entity @s container.13 with air
item replace entity @s container.14 with air
item replace entity @s container.15 with air
item replace entity @s container.16 with air
item replace entity @s container.17 with air
item replace entity @s container.18 with air
item replace entity @s container.19 with air
item replace entity @s container.20 with air
item replace entity @s container.21 with air
item replace entity @s container.22 with air
item replace entity @s container.23 with air
item replace entity @s container.24 with air
item replace entity @s container.25 with air
item replace entity @s container.26 with air
item replace entity @s container.27 with air
item replace entity @s container.28 with air
item replace entity @s container.29 with air
item replace entity @s container.30 with air
item replace entity @s container.31 with air
item replace entity @s container.32 with air
item replace entity @s container.33 with air
item replace entity @s container.34 with air
item replace entity @s container.35 with air
item replace entity @s armor.feet with air
item replace entity @s armor.legs with air
item replace entity @s armor.chest with air
item replace entity @s armor.head with air
item replace entity @s weapon.offhand with air


execute store result score %glass_count uhcp_a_count run clear @s minecraft:black_stained_glass_pane 0
execute if score %glass_count uhcp_a_count matches 1.. run function uhcp:augments/returnitemafter
execute if score %glass_count uhcp_a_count matches 1.. run return 0

playsound block.note_block.chime master @s ~ ~ ~ 1 1 1
particle totem_of_undying ~ ~ ~ 0.5 0.5 0.5 1 100 normal
tellraw @a [{"selector":"@s","color":"blue"},{"text":" selected an augment!","color":"white"}]

execute as @s at @s store result score @s uhcp_a_selectedAugment run function uhcp:augments/assign
