##
# Generate augment choices
##
advancement revoke @s only uhcp:update_menu
tag @s add UHCP_DisableReset
clear @s
execute at @s run kill @e[type=item,distance=..4]

loot replace entity @s hotbar.0 loot uhcp:lobby_menu/team
loot replace entity @s hotbar.1 loot uhcp:lobby_menu/patron
execute unless score @s uhcp_ready matches 2 run loot replace entity @s hotbar.7 loot uhcp:lobby_menu/spectate
execute if score @s uhcp_ready matches 2 run loot replace entity @s hotbar.7 loot uhcp:lobby_menu/stop_spectate
execute if score @s uhcp_ready matches 1..2 run loot replace entity @s hotbar.8 loot uhcp:lobby_menu/ready
execute unless score @s uhcp_ready matches 1.. run loot replace entity @s hotbar.8 loot uhcp:lobby_menu/not_ready

item replace entity @s inventory.0 with black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.1 with black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.2 with black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.3 with black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.4 with black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.5 with black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.6 with black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.7 with black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.8 with black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.9 with black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.10 with black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.11 with black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.12 with black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.13 with black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.14 with black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.15 with black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.16 with black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.17 with black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.18 with black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.19 with black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.20 with black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.21 with black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.22 with black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.23 with black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.24 with black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.25 with black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.26 with black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1

tag @s remove UHCP_DisableReset