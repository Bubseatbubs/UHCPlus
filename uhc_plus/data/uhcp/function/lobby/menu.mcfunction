# Generate lobby menu
tag @s add UHCP_DisableReset
function uhcp:lobby/menu/head
item replace entity @s armor.chest with minecraft:air
item replace entity @s armor.legs with minecraft:air
item replace entity @s armor.feet with minecraft:air
item replace entity @s player.crafting.0 with minecraft:air
item replace entity @s player.crafting.1 with minecraft:air
item replace entity @s player.crafting.2 with minecraft:air
item replace entity @s player.crafting.3 with minecraft:air
item replace entity @s player.cursor with minecraft:air
item replace entity @s weapon.offhand with minecraft:air
execute at @s run kill @e[type=minecraft:item,distance=..4]

# Create Player Hotbar
function uhcp:lobby/menu/team
function uhcp:lobby/menu/patron
loot replace entity @s hotbar.2 loot uhcp:lobby_menu/skip_travel
function uhcp:lobby/menu/special_item
loot replace entity @s hotbar.6 loot uhcp:lobby_menu/settings_display
function uhcp:lobby/menu/spectate
function uhcp:lobby/menu/ready

# Fill Rest of Player Inventory
item replace entity @s inventory.0 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @s inventory.1 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @s inventory.2 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @s inventory.3 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @s inventory.4 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @s inventory.5 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @s inventory.6 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @s inventory.7 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @s inventory.8 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @s inventory.9 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @s inventory.10 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @s inventory.11 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @s inventory.12 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @s inventory.13 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @s inventory.14 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @s inventory.15 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @s inventory.16 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @s inventory.17 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @s inventory.18 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @s inventory.19 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @s inventory.20 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @s inventory.21 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @s inventory.22 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @s inventory.23 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @s inventory.24 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @s inventory.25 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1
item replace entity @s inventory.26 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={},minecraft:max_stack_size=1] 1

tag @s remove UHCP_DisableReset
advancement revoke @s only uhcp:lobby/update_menu
