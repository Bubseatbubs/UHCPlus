# Search
data modify storage uhcp:compass Work set from storage uhcp:compass Compass.hand[0].components."minecraft:custom_data".uuid
execute store success score %uhcp_compassID uhcp_itemInv run data modify storage uhcp:compass Work set from storage uhcp:compass Track[-1].uuid
execute if score %uhcp_compassID uhcp_itemInv matches 0 run return 1
scoreboard players remove %uhcp_compassTrack uhcp_itemInv 1
execute if score %uhcp_compassTrack uhcp_itemInv matches ..0 run return 0

# Continue search
data modify storage uhcp:compass Track prepend from storage uhcp:compass Track[-1]
data remove storage uhcp:compass Track[-1]
execute store result score %uhcp_compassFound uhcp_itemInv run function uhcp:compass/replace/hand0/compare/find
