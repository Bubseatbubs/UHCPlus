# Determine which item entity to adjust
execute as @a[tag=UHCP_Compass] at @s run function uhcp:crafting/item/player_compass/adjust
execute as @a[tag=UHCP_EnderEye] at @s run function uhcp:crafting/item/glow/adjust

# Remove tag
tag @a remove UHCP_Craft
