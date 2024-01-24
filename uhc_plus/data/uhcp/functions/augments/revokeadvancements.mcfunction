# System to detect if a player moved an item to their armor/offhand slot during selection
# Returns item to correct slot if this is the case

scoreboard players set @s uhcp_a_validSelection 0

# Revert Black Stained Glass Pane
clear @s black_stained_glass_pane
item replace entity @s hotbar.0 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s hotbar.1 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s hotbar.2 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s hotbar.6 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s hotbar.7 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s hotbar.8 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s inventory.0 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s inventory.1 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s inventory.2 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s inventory.3 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s inventory.4 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s inventory.5 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s inventory.6 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s inventory.7 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s inventory.8 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s inventory.9 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s inventory.10 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s inventory.11 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s inventory.12 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s inventory.13 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s inventory.14 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s inventory.15 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s inventory.16 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s inventory.17 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s inventory.18 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s inventory.19 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s inventory.20 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s inventory.21 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s inventory.22 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s inventory.23 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s inventory.24 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s inventory.25 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1
item replace entity @s inventory.26 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,pickup:1b,uhcp_glass:1b} 1

advancement revoke @s only uhcp:augments/chosenitem
advancement revoke @s only uhcp:augments/threwitem
