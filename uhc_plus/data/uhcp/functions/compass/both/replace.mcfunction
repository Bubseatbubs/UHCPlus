# Manage compass data
data modify storage uhcp:compass Work set value [I;-1,-1,-1,-1]
execute store success score %uhcp_compassID uhcp_itemInv run data modify storage uhcp:compass Work set from storage uhcp:compass Compass.hand[0].tag.UUID
execute if score %uhcp_compassID uhcp_itemInv matches 0 run function uhcp:compass/replace/hand0/assign
execute if score %uhcp_compassID uhcp_itemInv matches 1 run function uhcp:compass/replace/hand0/compare

execute store result score %uhcp_compassAge uhcp_itemInv run data get storage uhcp:compass Compass.hand[0].tag.compass_time
scoreboard players add %uhcp_compassAge uhcp_itemInv 1
execute if score %uhcp_compassAge uhcp_itemInv matches 61.. run function uhcp:compass/both/mainhand
execute if score %uhcp_compassAge uhcp_itemInv matches 0..60 run function uhcp:compass/both/age/mainhand

data modify storage uhcp:compass Work set value [I;-1,-1,-1,-1]
execute store success score %uhcp_compassID uhcp_itemInv run data modify storage uhcp:compass Work set from storage uhcp:compass Compass.hand[0].tag.UUID
execute if score %uhcp_compassID uhcp_itemInv matches 0 run function uhcp:compass/replace/hand1/assign
execute if score %uhcp_compassID uhcp_itemInv matches 1 run function uhcp:compass/replace/hand1/compare

execute store result score %uhcp_compassAge uhcp_itemInv run data get storage uhcp:compass Compass.hand[1].tag.compass_time
scoreboard players add %uhcp_compassAge uhcp_itemInv 1
execute if score %uhcp_compassAge uhcp_itemInv matches 61.. run function uhcp:compass/both/offhand
execute if score %uhcp_compassAge uhcp_itemInv matches 0..60 run function uhcp:compass/both/age/offhand

# Replace player's compasses
setblock 0 0 0 minecraft:barrel
data modify block 0 0 0 Items set from storage uhcp:compass Compass.hand
item replace entity @s weapon.mainhand from block 0 0 0 container.0
item replace entity @s weapon.offhand from block 0 0 0 container.1
