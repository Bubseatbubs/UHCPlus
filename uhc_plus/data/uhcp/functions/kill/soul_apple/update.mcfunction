scoreboard players add @s uhcp_timer 1

execute if score @s uhcp_timer matches 201.. run return 0
execute if score @s uhcp_timer matches ..199 run return 0

summon minecraft:item ~ ~ ~ {PickupDelay:40s,Tags:["UHCP_New"],Item:{id:"minecraft:apple",count:1}}
loot replace entity @e[type=minecraft:item,tag=UHCP_New,sort=nearest,limit=1] contents loot uhcp:consumables/soul_apple
tag @e remove UHCP_New
kill @s