# Add missing compass
data modify storage uhcp:compass Track prepend value {}
data modify storage uhcp:compass Track[0].UUID set from storage uhcp:compass Compass.hand[0].tag.UUID
data modify storage uhcp:compass Track[0].Count set from storage uhcp:compass Compass.hand[0].Count
