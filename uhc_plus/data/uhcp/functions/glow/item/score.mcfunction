# Adjust player score
scoreboard players remove @s uhcp_itemCount 1
execute as @e[distance=..10,tag=!UHCP_AllSee,predicate=uhcp:ender_eye/item_entity/any,sort=nearest,limit=1] run function uhcp:glow/item/remove
execute if score @s uhcp_itemCount matches 1.. run function uhcp:glow/item/score
