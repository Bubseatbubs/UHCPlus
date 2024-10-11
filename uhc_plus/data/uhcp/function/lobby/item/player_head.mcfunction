# Player head
advancement revoke @s only uhcp:lobby/item/player_head
scoreboard players set %lobby_item_7 uhcp_initStatus 1
scoreboard players set %lobby_item_7 uhcp_itemCount 20
execute if score @s uhcp_lobby_item matches 7 run return fail

tag @s add UHCP_DisableReset
scoreboard players set @s uhcp_lobby_item 7
loot replace entity @s armor.head loot uhcp:lobby_menu/special_item
loot replace entity @s container.4 loot uhcp:lobby_menu/special_item
tag @s remove UHCP_DisableReset
