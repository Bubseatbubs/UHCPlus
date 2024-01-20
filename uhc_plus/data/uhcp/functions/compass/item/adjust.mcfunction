# Remove one compass from nearest item entity
tag @e[distance=..15,predicate=uhcp:compass/item_entity/protected] add UHCP_Player
function uhcp:compass/item/score
tag @s remove UHCP_Compass
