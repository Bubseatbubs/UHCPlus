##
# Generate augment choices
##
tag @s add UHCP_DisableReset
execute unless score @s uhcp_lobby_item matches 7 run item replace entity @s armor.head with minecraft:air
execute if score @s uhcp_lobby_item matches 7 run item replace entity @s armor.head with minecraft:player_head[minecraft:item_name='{"text":"Crewmate"}',minecraft:lore=['{"text":"STOP POSTING ABOUT AMONG US"}'],minecraft:profile={id:[I;1103181598,442909615,-1944221175,-54642410],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjg5YmNlNzM2YTRmZDc5M2VlMmEzODI3NTZhMjUzZjkyY2E3ZDdlYWMwMzFlNDViYTk3YWQwNmNlODYzZGQ0YiJ9fX0="}]}] 1
item replace entity @s armor.chest with minecraft:air
item replace entity @s armor.legs with minecraft:air
item replace entity @s armor.feet with minecraft:air
item replace entity @s player.cursor with minecraft:air
item replace entity @s weapon.offhand with minecraft:air
execute at @s run kill @e[type=minecraft:item,distance=..4]

# Relic Testing Chamber
execute if entity @s[tag=UHCP_RelicTestingChamber] run function uhcp:lobby/relic_testing/menu

# Create Player Hotbar
execute unless score %team uhcp_settings matches 1 run item replace entity @s hotbar.0 with minecraft:air
execute unless score %players_select_teams uhcp_settings matches 1 run item replace entity @s hotbar.0 with minecraft:air
execute if score %team uhcp_settings matches 1 if score %players_select_teams uhcp_settings matches 1 run loot replace entity @s hotbar.0 loot uhcp:lobby_menu/team
execute unless score %patrons uhcp_settings matches 1 run item replace entity @s hotbar.1 with minecraft:air
execute if score %patrons uhcp_settings matches 1 run loot replace entity @s hotbar.1 loot uhcp:lobby_menu/patron
loot replace entity @s hotbar.2 loot uhcp:lobby_menu/skip_travel
loot replace entity @s hotbar.4 loot uhcp:lobby_menu/special_item
loot replace entity @s hotbar.6 loot uhcp:lobby_menu/settings_display
execute unless score @s uhcp_ready matches 2 run loot replace entity @s hotbar.7 loot uhcp:lobby_menu/spectate
execute if score @s uhcp_ready matches 2 run loot replace entity @s hotbar.7 loot uhcp:lobby_menu/stop_spectate
execute if score @s uhcp_ready matches 1..2 run loot replace entity @s hotbar.8 loot uhcp:lobby_menu/ready
execute unless score @s uhcp_ready matches 1.. run loot replace entity @s hotbar.8 loot uhcp:lobby_menu/not_ready

execute unless entity @s[tag=UHCP_RelicTestingChamber] run item replace entity @s hotbar.3 with minecraft:air
execute unless entity @s[tag=UHCP_RelicTestingChamber] run item replace entity @s hotbar.5 with minecraft:air

# Fill Rest of Player Inventory
item replace entity @s inventory.0 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.1 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.2 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.3 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.4 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.5 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.6 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.7 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.8 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.9 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.10 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.11 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.12 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.13 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.14 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.15 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.16 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.17 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.18 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.19 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.20 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.21 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.22 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.23 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.24 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.25 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1
item replace entity @s inventory.26 with minecraft:black_stained_glass_pane[minecraft:item_name='{"text":"Menu Selection","color":"gold"}',minecraft:hide_tooltip={}] 1

tag @s remove UHCP_DisableReset
advancement revoke @s only uhcp:update_menu
