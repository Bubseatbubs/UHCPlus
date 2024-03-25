#>  uhcp:augments/return/swap
#   Returns the player's items if they made a strange selection
#
# @within uhcp:augments/validate

# Swap augment selection item back into empty slot
execute if items entity @s container.3 minecraft:black_stained_glass_pane run scoreboard players set @s uhcp_itemInv 3
execute if items entity @s container.4 minecraft:black_stained_glass_pane run scoreboard players set @s uhcp_itemInv 4
execute if items entity @s container.5 minecraft:black_stained_glass_pane run scoreboard players set @s uhcp_itemInv 5
execute if items entity @s container.7 minecraft:black_stained_glass_pane run scoreboard players set @s uhcp_itemInv 7

execute if score @s uhcp_a_validSelection matches 2 run function uhcp:augments/return/slot/0
execute if score @s uhcp_a_validSelection matches 3 run function uhcp:augments/return/slot/1
execute if score @s uhcp_a_validSelection matches 4 run function uhcp:augments/return/slot/2
execute if score @s uhcp_a_validSelection matches 5 run function uhcp:augments/return/slot/6
execute if score @s uhcp_a_validSelection matches 6 run function uhcp:augments/return/slot/8

function uhcp:augments/generate/panes
