loot replace entity @s hotbar.3 loot uhcp:lobby_menu/relic_testing/previous
loot replace entity @s hotbar.5 loot uhcp:lobby_menu/relic_testing/next

execute if score @s uhcp_lobby_item matches 10 run loot replace entity @s hotbar.4 loot uhcp:relics/buzzburst
execute if score @s uhcp_lobby_item matches 11 run loot replace entity @s hotbar.4 loot uhcp:relics/soulflames_embrace
execute if score @s uhcp_lobby_item matches 12 run loot replace entity @s hotbar.4 loot uhcp:relics/flux_factor
execute if score @s uhcp_lobby_item matches 13 run loot replace entity @s hotbar.4 loot uhcp:relics/gravity_globe
execute if score @s uhcp_lobby_item matches 14 run loot replace entity @s hotbar.4 loot uhcp:relics/runic_sentry
execute if score @s uhcp_lobby_item matches 15 run loot replace entity @s hotbar.4 loot uhcp:relics/windfall
execute if score @s uhcp_lobby_item matches 16 run loot replace entity @s hotbar.4 loot uhcp:relics/smooth_getaway
execute if score @s uhcp_lobby_item matches 17 run loot replace entity @s hotbar.4 loot uhcp:relics/web_o_rang
execute if score @s uhcp_lobby_item matches 18 run loot replace entity @s hotbar.4 loot uhcp:relics/dragons_protection

item modify entity @s hotbar.4 uhcp:relic_testing_chamber