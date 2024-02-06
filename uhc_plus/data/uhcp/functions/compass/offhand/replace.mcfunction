# Determine compass age
execute store result score %uhcp_compassAge uhcp_itemInv run data get storage uhcp:compass Compass.hand[0].tag.compass_time
scoreboard players add %uhcp_compassAge uhcp_itemInv 1
execute if score %uhcp_compassAge uhcp_itemInv matches 121.. run function uhcp:compass/offhand/offhand
execute if score %uhcp_compassAge uhcp_itemInv matches 0..120 run function uhcp:compass/offhand/age

# Replace player's compass
setblock 0 0 0 minecraft:barrel
data modify block 0 0 0 Items set from storage uhcp:compass Compass.hand
item replace entity @s weapon.offhand from block 0 0 0 container.0
