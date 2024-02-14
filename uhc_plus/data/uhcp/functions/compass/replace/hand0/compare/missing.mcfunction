# Add missing compass
data modify storage uhcp:compass Track append value {}
data modify storage uhcp:compass Track[-1].UUID set from storage uhcp:compass Compass.hand[0].tag.UUID
data modify storage uhcp:compass Track[-1].Count set from storage uhcp:compass Compass.hand[0].Count
