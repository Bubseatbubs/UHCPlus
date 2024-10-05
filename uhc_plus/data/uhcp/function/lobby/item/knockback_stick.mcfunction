# Knockback stick
scoreboard players set %lobby_item_6 uhcp_initStatus 1
execute if score @s uhcp_lobby_item matches 6 run return fail

tag @s add UHCP_DisableReset
scoreboard players set @s uhcp_lobby_item 6
loot replace entity @s container.4 loot uhcp:lobby_menu/special_item
tag @s remove UHCP_DisableReset
