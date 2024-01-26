# Remove one ender eye from nearest item entity
tag @e[distance=..15,predicate=uhcp:ender_eye/item_entity/protected] add UHCP_AllSee
function uhcp:crafting/item/glow/score
tag @s remove UHCP_EnderEye
