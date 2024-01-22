# System to detect if a player moved an item to their armor/offhand slot during selection
# Returns item to correct slot if this is the case
execute store success score @s uhcp_a_validSelection run data get entity @s Inventory[{Slot:100b}]
execute store success score @s[scores={uhcp_a_validSelection=0}] uhcp_a_validSelection run data get entity @s Inventory[{Slot:101b}]
execute store success score @s[scores={uhcp_a_validSelection=0}] uhcp_a_validSelection run data get entity @s Inventory[{Slot:102b}]
execute store success score @s[scores={uhcp_a_validSelection=0}] uhcp_a_validSelection run data get entity @s Inventory[{Slot:103b}]
execute store success score @s[scores={uhcp_a_validSelection=0}] uhcp_a_validSelection run data get entity @s Inventory[{Slot:-106b}]
execute as @s[scores={uhcp_a_validSelection=0},tag=!disableChoose] run function uhcp:augments/optionselected
execute as @s[scores={uhcp_a_validSelection=1},tag=!disableChoose] run function uhcp:augments/returnitem
tag @s[tag=disableChoose] remove disableChoose
advancement revoke @s only uhcp:augments/chosenitem