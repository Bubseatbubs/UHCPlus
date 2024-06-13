# Reassign and reset item
execute store result storage uhcp:compass Track[-1].count int 1 run scoreboard players get %compass_count uhcp_itemInv
function uhcp:compass/replace/hand1/assign
data modify storage uhcp:compass Compass.hand[1] set value 0b
