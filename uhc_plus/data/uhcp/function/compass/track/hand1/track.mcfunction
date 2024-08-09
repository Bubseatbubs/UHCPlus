# Reduce compasses in offhand
execute store result score %compass_age uhcp_itemCount run data get storage uhcp:compass Compass.hand[1].count
scoreboard players remove %compass_age uhcp_itemCount 1
execute store result storage uhcp:compass Compass.hand[1].count int 1 run scoreboard players get %compass_age uhcp_itemCount
data modify storage uhcp:compass Compass.hand[1].components."minecraft:custom_data".compass_time set value 1b

# Track item in array
function uhcp:compass/track/hand1/array

# Notification
function uhcp:compass/notify/0
