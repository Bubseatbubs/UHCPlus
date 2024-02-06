# Reward player with player compass
execute store result score %uhcp_itemTot uhcp_itemCount run clear @s minecraft:compass 0
scoreboard players set %uhcp_itemLow uhcp_itemCount 65
execute if score %uhcp_itemTot uhcp_itemCount matches 1.. run function uhcp:crafting/inventory/player_compass
execute unless score %uhcp_itemLow uhcp_itemCount matches ..64 run function uhcp:crafting/item/player_compass
execute store result score %uhcp_item uhcp_itemCount run loot give @s loot uhcp:player_compass
execute if score %uhcp_item uhcp_itemCount matches 0 at @s run function uhcp:crafting/reward/player_compass/spawn
advancement revoke @s only uhcp:player_compass
