# Remove one from Count
execute store result score %uhcp_itemEnt uhcp_itemCount run data get entity @s Item.count
execute if score %uhcp_itemEnt uhcp_itemCount matches 0 run scoreboard players set %uhcp_itemEnt uhcp_itemCount 1
scoreboard players remove %uhcp_itemEnt uhcp_itemCount 1
execute store result entity @s Item.count int 1 run scoreboard players get %uhcp_itemEnt uhcp_itemCount
data modify entity @s PickupDelay set value 40s
