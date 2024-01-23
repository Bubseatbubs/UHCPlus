# Returns item to player's inventory if black stained glass was selected and redos augment selection
# Disable options from being selected while function is running
tag @s add UHCP_DisableChoose
scoreboard players reset @s uhcp_a_selectedAugment
clear @s black_stained_glass_pane


# Clear filled slots
item replace entity @s weapon.offhand with air

# Reform Glass
clear @s black_stained_glass_pane
item replace entity @s hotbar.0 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s hotbar.1 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s hotbar.2 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
execute in uhcp:main run item replace entity @s hotbar.3 from block 0 -64 0 container.0
execute in uhcp:main run item replace entity @s hotbar.4 from block 0 -64 0 container.1
execute in uhcp:main run item replace entity @s hotbar.5 from block 0 -64 0 container.2
item replace entity @s hotbar.6 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s hotbar.7 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s hotbar.8 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1

item replace entity @s inventory.0 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s inventory.1 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s inventory.2 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s inventory.3 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s inventory.4 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s inventory.5 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s inventory.6 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s inventory.7 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s inventory.8 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s inventory.9 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s inventory.10 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s inventory.11 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s inventory.12 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s inventory.13 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s inventory.14 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s inventory.15 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s inventory.16 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s inventory.17 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s inventory.18 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s inventory.19 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s inventory.20 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s inventory.21 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s inventory.22 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s inventory.23 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s inventory.24 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s inventory.25 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s inventory.26 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1


tag @s remove UHCP_DisableChoose
tag @s add UHCP_ChoosingItem

