# Reward player with player compass
execute store result score %uhcp_itemTot uhcp_itemCount run clear @s minecraft:compass 0
scoreboard players set %uhcp_itemLow uhcp_itemCount 65
execute if score %uhcp_itemTot uhcp_itemCount matches 1.. run function uhcp:crafting/inventory/player_compass
execute unless score %uhcp_itemLow uhcp_itemCount matches ..64 run function uhcp:crafting/item/player_compass
execute at @s run loot spawn ~ ~ ~ loot uhcp:player_compass
execute at @s as @e[distance=..2,predicate=uhcp:compass/item_entity/player_compass] run data modify entity @s PickupDelay set value 0s
advancement revoke @s only uhcp:player_compass
