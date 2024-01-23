# System to detect if a player moved an item to their armor/offhand slot during selection
# Returns item to correct slot if this is the case

scoreboard players set @s uhcp_a_validSelection 0
execute at @s store success score @s[scores={uhcp_a_validSelection=0}] uhcp_a_validSelection run data get entity @s Inventory[{Slot:100b}]
execute at @s store success score @s[scores={uhcp_a_validSelection=0}] uhcp_a_validSelection run data get entity @s Inventory[{Slot:101b}]
execute at @s store success score @s[scores={uhcp_a_validSelection=0}] uhcp_a_validSelection run data get entity @s Inventory[{Slot:102b}]
execute at @s store success score @s[scores={uhcp_a_validSelection=0}] uhcp_a_validSelection run data get entity @s Inventory[{Slot:103b}]
execute at @s store success score @s[scores={uhcp_a_validSelection=0}] uhcp_a_validSelection run data get entity @s Inventory[{Slot:-106b}]

# Add item to barrel, in case BSG was selected
execute in uhcp:main run setblock 0 -64 0 barrel
execute in uhcp:main as @s run item replace block 0 -64 0 container.0 from entity @s hotbar.3
execute in uhcp:main as @s run item replace block 0 -64 0 container.1 from entity @s hotbar.4
execute in uhcp:main as @s run item replace block 0 -64 0 container.2 from entity @s hotbar.5

execute at @s as @s[scores={uhcp_a_validSelection=0},tag=!UHCP_DisableChoose] run function uhcp:augments/optionselected
execute at @s as @s[scores={uhcp_a_validSelection=1},tag=!UHCP_DisableChoose] run function uhcp:augments/returnitem
tag @s[tag=UHCP_DisableChoose] remove UHCP_DisableChoose
advancement revoke @s only uhcp:augments/chosenitem