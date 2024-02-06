# Reduce compasses in offhand
execute store result score %uhcp_compassAge uhcp_itemCount run data get storage uhcp:compass Compass.hand[1].Count
scoreboard players remove %uhcp_compassAge uhcp_itemCount 1
execute store result storage uhcp:compass Compass.hand[1].Count byte 1 run scoreboard players get %uhcp_compassAge uhcp_itemCount
data modify storage uhcp:compass Compass.hand[1].tag.compass_time set value 0b

# Notification
function uhcp:compass/notify/0
