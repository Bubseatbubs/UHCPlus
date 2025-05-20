# Determine action
$execute if score %compass_age uhcp_itemCount matches 1.. run return run data modify storage uhcp:compass Track[{uuid:$(uuid)}].count set from storage uhcp:compass Compass.hand[1].count
$data remove storage uhcp:compass Track[{uuid:$(uuid)}]
data remove storage uhcp:compass Compass.hand[1]
