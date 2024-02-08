# Reduce compasses in offhand
execute store result score %uhcp_compassAge uhcp_itemCount run data get storage uhcp:compass Compass.hand[0].Count
scoreboard players remove %uhcp_compassAge uhcp_itemCount 1
execute store result storage uhcp:compass Compass.hand[0].Count byte 1 run scoreboard players get %uhcp_compassAge uhcp_itemCount
data modify storage uhcp:compass Compass.hand[0].tag.compass_time set value 1b

# Track item in array
execute if score %uhcp_compassAge uhcp_itemCount matches ..0 run data remove storage uhcp:compass Track[0]
execute if score %uhcp_compassAge uhcp_itemCount matches 1.. run data modify storage uhcp:compass Track[0].Count set from storage uhcp:compass Compass.hand[0].Count

# Notification
function uhcp:compass/notify/0
