# Use compass once
execute if score %compass_age uhcp_itemInv matches 0..60 run return run function uhcp:compass/track/hand1/age
execute if score %compass_age uhcp_itemInv matches 61.. run function uhcp:compass/track/hand1/track
