# Remove one compass from nearest item entity
tag @e[distance=..15,predicate=uhcp:compass/item_entity/protected] add UHCP_Player
function uhcp:crafting/item/player_compass/score
tag @s remove UHCP_Compass
