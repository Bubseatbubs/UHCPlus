# Check for aging condition
execute store result storage uhcp:compass Compass.hand[0].components."minecraft:custom_data".compass_time byte 1 run scoreboard players get %compass_age uhcp_itemInv
execute if score %compass_age uhcp_itemInv matches 49 run function uhcp:compass/notify/1
execute if score %compass_age uhcp_itemInv matches 37 run function uhcp:compass/notify/2
