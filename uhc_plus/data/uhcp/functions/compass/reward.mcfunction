# Reward player with player compass
execute store result score %uhcp_compassTot uhcp_itemCount run clear @s minecraft:compass 0
scoreboard players set %uhcp_compassLow uhcp_itemCount 65
execute if score %uhcp_compassTot uhcp_itemCount matches 1.. in uhcp:main run function uhcp:compass/inventory
execute unless score %uhcp_compassLow uhcp_itemCount matches ..64 run function uhcp:compass/item
execute at @s run loot spawn ~ ~ ~ loot uhcp:player_compass
execute at @s run data modify entity @e[predicate=uhcp:compass/item_entity/player_compass,sort=nearest,limit=1] PickupDelay set value 0s
advancement revoke @s only uhcp:player_compass
