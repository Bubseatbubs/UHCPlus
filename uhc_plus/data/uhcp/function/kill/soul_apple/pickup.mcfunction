# Allow soul apple to be picked up by anyone
summon minecraft:item ~ ~ ~ {Glowing:1b,Tags:["UHCP_New"],Item:{id:"minecraft:apple",count:1}}
data modify entity @n[tag=UHCP_New] Motion set from entity @s Motion
execute as @n[tag=UHCP_New] run function uhcp:kill/soul_apple/item/new
kill @s
