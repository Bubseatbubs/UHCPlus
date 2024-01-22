# System to detect if a player moved an item to their armor/offhand slot during selection
# Returns item to correct slot if this is the case
execute at @s store result score %glass_count uhcp_a_count run clear @s minecraft:black_stained_glass_pane 0
execute at @s unless score %glass_count uhcp_a_count matches 33 run scoreboard players set @s uhcp_a_validSelection 1
execute at @s if score %glass_count uhcp_a_count matches 33 run scoreboard players set @s uhcp_a_validSelection 0

execute at @s store success score @s[scores={uhcp_a_validSelection=0}] uhcp_a_validSelection run data get entity @s Inventory[{Slot:100b}]
execute at @s store success score @s[scores={uhcp_a_validSelection=0}] uhcp_a_validSelection run data get entity @s Inventory[{Slot:101b}]
execute at @s store success score @s[scores={uhcp_a_validSelection=0}] uhcp_a_validSelection run data get entity @s Inventory[{Slot:102b}]
execute at @s store success score @s[scores={uhcp_a_validSelection=0}] uhcp_a_validSelection run data get entity @s Inventory[{Slot:103b}]
execute at @s store success score @s[scores={uhcp_a_validSelection=0}] uhcp_a_validSelection run data get entity @s Inventory[{Slot:-106b}]

execute at @s as @s[scores={uhcp_a_validSelection=0},tag=!UHCP_DisableChoose] run function uhcp:augments/optionselected
execute at @s as @s[scores={uhcp_a_validSelection=1},tag=!UHCP_DisableChoose] run function uhcp:augments/returnitem
tag @s[tag=UHCP_DisableChoose] remove UHCP_DisableChoose
advancement revoke @s only uhcp:augments/chosenitem