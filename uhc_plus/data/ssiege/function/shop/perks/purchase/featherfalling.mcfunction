$execute store result score @s ssiege_perk_featherfalling run clear @s diamond $(cost)
execute as @s[team=blue] unless entity @n[tag=SSIEGE_BLUE_SHOPKEEPER,distance=..20] run return run tellraw @s ["",{"text":"You are "},{"text":"too far away","color":"red"},{"text":" from your "},{"text":"Shopkeeper","color":"yellow"},{"text":"!"}]
execute as @s[team=red] unless entity @n[tag=SSIEGE_RED_SHOPKEEPER,distance=..20] run return run tellraw @s ["",{"text":"You are "},{"text":"too far away","color":"red"},{"text":" from your "},{"text":"Shopkeeper","color":"yellow"},{"text":"!"}]

execute as @s[team=blue] if score @s ssiege_perk_featherfalling < %blue_cost ssiege_perk_featherfalling run execute store result storage ssiege:temp refund int 1 run scoreboard players get @s ssiege_perk_featherfalling
execute as @s[team=blue] if score @s ssiege_perk_featherfalling < %blue_cost ssiege_perk_featherfalling run return run function ssiege:shop/perks/purchase/refund with storage ssiege:temp
execute as @s[team=red] if score @s ssiege_perk_featherfalling < %red_cost ssiege_perk_featherfalling run execute store result storage ssiege:temp refund int 1 run scoreboard players get @s ssiege_perk_featherfalling
execute as @s[team=red] if score @s ssiege_perk_featherfalling < %red_cost ssiege_perk_featherfalling run return run function ssiege:shop/perks/purchase/refund with storage ssiege:temp

# Successful purchase
tellraw @a[team=blue] ["",{"selector":"@s"},{"text":" purchased "},{"text":"Feather Falling Level ","color":"green"},{"score":{"name":"%blue","objective":"ssiege_perk_featherfalling"},"color":"green"},{"text":" for ","color":"white"},{"text":"your team!","color":"blue"}]
tellraw @a[team=red] ["",{"selector":"@s"},{"text":" purchased "},{"text":"Feather Falling Level ","color":"green"},{"score":{"name":"%red","objective":"ssiege_perk_featherfalling"},"color":"green"},{"text":" for ","color":"white"},{"text":"your team!","color":"red"}]

# Update Perk score
execute as @s[team=blue] run scoreboard players add %blue ssiege_perk_featherfalling 1
execute as @s[team=red] run scoreboard players add %red ssiege_perk_featherfalling 1

function ssiege:shop/perks/effects/feather_falling

# Update Price
execute as @s[team=blue] run return run function ssiege:shop/perks/update_blue_perk_costs
execute as @s[team=red] run function ssiege:shop/perks/update_red_perk_costs