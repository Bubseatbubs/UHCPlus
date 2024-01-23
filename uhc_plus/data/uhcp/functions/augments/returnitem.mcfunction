# Returns item to player's inventory (check checkvalidity.mcfunction for more information)
# Disable options from being selected while function is running
tag @s add UHCP_DisableChoose
execute at @s in uhcp:main run setblock 0 -64 0 barrel
say returned item

# Add item to barrel
execute in uhcp:main as @s[nbt={Inventory:[{Slot:103b}]}] run item replace block 0 -64 0 container.0 from entity @s armor.head
execute in uhcp:main as @s[nbt={Inventory:[{Slot:102b}]}] run item replace block 0 -64 0 container.0 from entity @s armor.chest
execute in uhcp:main as @s[nbt={Inventory:[{Slot:101b}]}] run item replace block 0 -64 0 container.0 from entity @s armor.legs
execute in uhcp:main as @s[nbt={Inventory:[{Slot:100b}]}] run item replace block 0 -64 0 container.0 from entity @s armor.feet
execute in uhcp:main as @s[nbt={Inventory:[{Slot:-106b}]}] run item replace block 0 -64 0 container.0 from entity @s weapon.offhand

# Replace empty slot with item
execute in uhcp:main unless entity @s[nbt={Inventory:[{Slot:3b}]}] run item replace entity @s container.3 from block 0 -64 0 container.0
execute in uhcp:main unless entity @s[nbt={Inventory:[{Slot:4b}]}] run item replace entity @s container.4 from block 0 -64 0 container.0
execute in uhcp:main unless entity @s[nbt={Inventory:[{Slot:5b}]}] run item replace entity @s container.5 from block 0 -64 0 container.0

# Clear filled slots
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air
item replace entity @s weapon.offhand with air

# Reform Glass
clear @s black_stained_glass_pane
item replace entity @s hotbar.0 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s hotbar.1 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
item replace entity @s hotbar.2 with black_stained_glass_pane{display:{Name:'{"text":"Select an Augment!","color":"gold","bold":false,"italic":false}'},HideFlags:255,uhcp_glass:1b} 1
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

