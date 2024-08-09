# Determine action
execute if score %compass_age uhcp_itemCount matches 1.. run return run data modify storage uhcp:compass Track[-1].count set from storage uhcp:compass Compass.hand[0].count
data remove storage uhcp:compass Track[-1]
data remove storage uhcp:compass Compass.hand[0]
