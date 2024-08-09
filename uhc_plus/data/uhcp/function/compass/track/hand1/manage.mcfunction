# Manage compass data
data modify storage uhcp:compass Work set value [I;-2147483648,-2147483648,-2147483648,-2147483648]
execute store success score %compass_id uhcp_itemInv run data modify storage uhcp:compass Work set from storage uhcp:compass Compass.hand[1].components."minecraft:custom_data".uuid
function uhcp:compass/track/hand1/identify

execute store result score %compass_age uhcp_itemInv run data get storage uhcp:compass Compass.hand[1].components."minecraft:custom_data".compass_time
scoreboard players add %compass_age uhcp_itemInv 1
function uhcp:compass/track/hand1/use
