# Loot spawn item when loot give results in 0
execute anchored eyes run loot spawn ^ ^ ^ loot uhcp:player_compass
execute as @e[distance=..2.5,predicate=uhcp:compass/item_entity/player_compass] run data modify entity @s PickupDelay set value 0s
