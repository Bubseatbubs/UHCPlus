# Relic testing chamber items (slots 3-5)
execute as @s[tag=UHCP_RelicTestingChamber] run return run function uhcp:lobby/menu/relic_testing
item replace entity @s hotbar.3 with minecraft:air
item replace entity @s hotbar.5 with minecraft:air

# Special item (slot 4)
execute unless score @s uhcp_lobby_item matches 0.. run return run item replace entity @s hotbar.4 with minecraft:air
loot replace entity @s hotbar.4 loot uhcp:lobby_menu/special_item
