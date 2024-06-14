summon minecraft:item ~ ~ ~ {Glowing:1b,PickupDelay:40s,Tags:["UHCP_Summon","UHCP_SoulApple","UHCP_New"],Item:{id:"minecraft:apple",count:1}}
loot replace entity @n[type=minecraft:item,tag=UHCP_New,tag=UHCP_SoulApple] contents loot uhcp:consumables/soul_apple
execute at @s[type=minecraft:player] run data modify entity @n[tag=UHCP_New,tag=UHCP_SoulApple] Owner set from entity @s UUID
execute at @s[type=!minecraft:player] run data modify entity @n[tag=UHCP_New,tag=UHCP_SoulApple] Glowing set value 0b
tag @e remove UHCP_New
