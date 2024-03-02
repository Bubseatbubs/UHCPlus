# Assign new unique identifier
execute store result storage uhcp:compass Compass.hand[1].components."minecraft:custom_data".uuid[0] int 1 run random value 0..2147483646
execute store result storage uhcp:compass Compass.hand[1].components."minecraft:custom_data".uuid[1] int 1 run random value 0..2147483646
execute store result storage uhcp:compass Compass.hand[1].components."minecraft:custom_data".uuid[2] int 1 run random value 0..2147483646
execute store result storage uhcp:compass Compass.hand[1].components."minecraft:custom_data".uuid[3] int 1 run random value 0..2147483646

# Track information
data modify storage uhcp:compass Track append value {}
data modify storage uhcp:compass Track[-1].uuid set from storage uhcp:compass Compass.hand[1].components."minecraft:custom_data".uuid
execute store result score %uhcp_compassCt uhcp_itemInv run data get storage uhcp:compass Compass.hand[1].count
execute if score %uhcp_compassCt uhcp_itemInv matches 0 run scoreboard players set %uhcp_compassCt uhcp_itemInv 1
execute store result storage uhcp:compass Track[-1].count int 1 run scoreboard players get %uhcp_compassCt uhcp_itemInv
