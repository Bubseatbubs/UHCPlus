# Compass identification
execute if score %compass_id uhcp_itemInv matches 1 run return run function uhcp:compass/replace/hand1/compare with storage uhcp:compass Current
function uhcp:compass/replace/hand1/assign
