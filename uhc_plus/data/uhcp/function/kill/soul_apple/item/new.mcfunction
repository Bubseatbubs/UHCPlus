# Modify soul apple able to be picked up by anyone
execute store result entity @s Item.count int 1 run scoreboard players get %soul_apples uhcp_settings
loot replace entity @s contents loot uhcp:consumables/soul_apple
tag @s remove UHCP_New
