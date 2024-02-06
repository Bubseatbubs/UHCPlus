# Check for aging condition
execute store result storage uhcp:compass Compass.hand[0].tag.compass_time byte 1 run scoreboard players get %uhcp_compassAge uhcp_itemInv
execute if score %uhcp_compassAge uhcp_itemInv matches 49 run function uhcp:compass/notify/1
execute if score %uhcp_compassAge uhcp_itemInv matches 37 run function uhcp:compass/notify/2
