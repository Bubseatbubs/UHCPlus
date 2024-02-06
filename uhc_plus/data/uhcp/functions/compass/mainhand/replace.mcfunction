# Determine compass age
execute store result score %uhcp_compassAge uhcp_itemInv run data get storage uhcp:compass Compass.hand[0].tag.compass_time
execute store result storage uhcp:compass Compass.hand[0].tag.id int 1 run random value 0..2147483646
scoreboard players add %uhcp_compassAge uhcp_itemInv 1
execute if score %uhcp_compassAge uhcp_itemInv matches 61.. run function uhcp:compass/mainhand/mainhand
execute if score %uhcp_compassAge uhcp_itemInv matches 0..60 run function uhcp:compass/mainhand/age

# Replace player's compass
setblock 0 0 0 minecraft:barrel
data modify block 0 0 0 Items set from storage uhcp:compass Compass.hand
item replace entity @s weapon.mainhand from block 0 0 0 container.0
