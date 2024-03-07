# Manage compass data
data modify storage uhcp:compass Work set value [I;-2147483648,-2147483648,-2147483648,-2147483648]
execute store success score %uhcp_compassID uhcp_itemInv run data modify storage uhcp:compass Work set from storage uhcp:compass Compass.hand[0].components."minecraft:custom_data".uuid
execute if score %uhcp_compassID uhcp_itemInv matches 0 run function uhcp:compass/replace/hand0/assign
execute if score %uhcp_compassID uhcp_itemInv matches 1 run function uhcp:compass/replace/hand0/compare

execute store result score %uhcp_compassAge uhcp_itemInv run data get storage uhcp:compass Compass.hand[0].components."minecraft:custom_data".compass_time
scoreboard players add %uhcp_compassAge uhcp_itemInv 1
execute if score %uhcp_compassAge uhcp_itemInv matches 61.. run function uhcp:compass/offhand/offhand
execute if score %uhcp_compassAge uhcp_itemInv matches 0..60 run function uhcp:compass/offhand/age

# Replace player's compass
setblock 0 0 0 minecraft:barrel
data modify block 0 0 0 Items set from storage uhcp:compass Compass.hand
item replace entity @s weapon.offhand from block 0 0 0 container.0
