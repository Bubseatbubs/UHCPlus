# Search
data modify storage uhcp:compass Work set from storage uhcp:compass Compass.hand[0].components."minecraft:custom_data".uuid
execute store success score %compass_id uhcp_itemInv run data modify storage uhcp:compass Work set from storage uhcp:compass Track[-1].uuid
execute if score %compass_id uhcp_itemInv matches 0 run return 1
scoreboard players remove %compass_track uhcp_itemInv 1
execute if score %compass_track uhcp_itemInv matches ..0 run return 0

# Continue search
data modify storage uhcp:compass Track prepend from storage uhcp:compass Track[-1]
data remove storage uhcp:compass Track[-1]
execute store result score %compass_found uhcp_itemInv run function uhcp:compass/replace/hand0/compare/find
