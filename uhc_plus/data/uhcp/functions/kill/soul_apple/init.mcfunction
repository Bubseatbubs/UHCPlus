summon minecraft:item ~ ~ ~ {Glowing:1b,PickupDelay:40s,Tags:["UHCP_Summon","UHCP_SoulApple","UHCP_New"],Item:{id:"minecraft:apple",count:1}}
loot replace entity @e[type=item,tag=UHCP_New,tag=UHCP_SoulApple,sort=nearest,limit=1] contents loot uhcp:consumables/soul_apple
execute if entity @s[type=player] run data modify entity @e[tag=UHCP_New,tag=UHCP_SoulApple,sort=nearest,limit=1] Owner set from entity @s UUID
execute unless entity @s[type=player] run data merge entity @e[tag=UHCP_New,tag=UHCP_SoulApple,sort=nearest,limit=1] {Glowing:0b}
tag @e remove UHCP_New