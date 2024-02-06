# Determine compass age
execute store result score %uhcp_compassAge uhcp_itemInv run data get storage uhcp:compass Compass.hand[0].tag.compass_time
execute store result storage uhcp:compass Compass.hand[0].tag.UUID[0] int 1 run random value 0..2147483646
execute store result storage uhcp:compass Compass.hand[0].tag.UUID[1] int 1 run random value 0..2147483646
execute store result storage uhcp:compass Compass.hand[0].tag.UUID[2] int 1 run random value 0..2147483646
execute store result storage uhcp:compass Compass.hand[0].tag.UUID[3] int 1 run random value 0..2147483646
scoreboard players add %uhcp_compassAge uhcp_itemInv 1
execute if score %uhcp_compassAge uhcp_itemInv matches 61.. run function uhcp:compass/both/mainhand
execute if score %uhcp_compassAge uhcp_itemInv matches 0..60 run function uhcp:compass/both/age/mainhand
execute store result score %uhcp_compassAge uhcp_itemInv run data get storage uhcp:compass Compass.hand[1].tag.compass_time
execute store result storage uhcp:compass Compass.hand[1].tag.UUID[0] int 1 run random value 0..2147483646
execute store result storage uhcp:compass Compass.hand[1].tag.UUID[1] int 1 run random value 0..2147483646
execute store result storage uhcp:compass Compass.hand[1].tag.UUID[2] int 1 run random value 0..2147483646
execute store result storage uhcp:compass Compass.hand[1].tag.UUID[3] int 1 run random value 0..2147483646
scoreboard players add %uhcp_compassAge uhcp_itemInv 1
execute if score %uhcp_compassAge uhcp_itemInv matches 61.. run function uhcp:compass/both/offhand
execute if score %uhcp_compassAge uhcp_itemInv matches 0..60 run function uhcp:compass/both/age/offhand

# Replace player's compasses
setblock 0 0 0 minecraft:barrel
data modify block 0 0 0 Items set from storage uhcp:compass Compass.hand
item replace entity @s weapon.mainhand from block 0 0 0 container.0
item replace entity @s weapon.offhand from block 0 0 0 container.1
