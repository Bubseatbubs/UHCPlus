# Reduce compasses in mainhand
execute store result score %compass_age uhcp_itemCount run data get storage uhcp:compass Compass.hand[0].count
scoreboard players remove %compass_age uhcp_itemCount 1
execute store result storage uhcp:compass Compass.hand[0].count int 1 run scoreboard players get %compass_age uhcp_itemCount
data modify storage uhcp:compass Compass.hand[0].components."minecraft:custom_data".compass_time set value 1b
execute if score %compass_age uhcp_itemCount matches 0 run data remove storage uhcp:compass Compass.hand[0]

# Track item in array
execute if score %compass_age uhcp_itemCount matches ..0 run data remove storage uhcp:compass Track[-1]
execute if score %compass_age uhcp_itemCount matches 1.. run data modify storage uhcp:compass Track[-1].count set from storage uhcp:compass Compass.hand[0].count

# Notification
function uhcp:compass/notify/0
