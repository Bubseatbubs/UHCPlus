# Fishing rod
advancement revoke @s only uhcp:lobby/item/fishing_rod
scoreboard players set %lobby_item_0 uhcp_initStatus 1
scoreboard players set %lobby_item_0 uhcp_itemCount 30
execute if score @s uhcp_lobby_item matches 0 run return fail

tag @s add UHCP_DisableReset
scoreboard players set @s uhcp_lobby_item 0
loot replace entity @s container.4 loot uhcp:lobby_menu/special_item
tag @s remove UHCP_DisableReset
