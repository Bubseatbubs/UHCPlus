# Reassign and reset item
execute store result storage uhcp:compass Track[0].Count byte 1 run scoreboard players get %uhcp_compassCt uhcp_itemInv
function uhcp:compass/replace/hand1/assign
data modify storage uhcp:compass Compass.hand[1].tag.compass_time set value 0b
