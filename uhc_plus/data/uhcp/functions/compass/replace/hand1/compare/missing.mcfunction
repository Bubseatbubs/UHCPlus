# Add missing compass
data modify storage uhcp:compass Track append value {}
data modify storage uhcp:compass Track[-1].uuid set from storage uhcp:compass Compass.hand[1].components."minecraft:custom_data".uuid
data modify storage uhcp:compass Track[-1].count set from storage uhcp:compass Compass.hand[1].count
