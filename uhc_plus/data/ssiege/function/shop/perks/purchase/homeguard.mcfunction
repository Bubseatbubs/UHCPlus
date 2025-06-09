$execute store result score @s ssiege_perk_homeguard run clear @s diamond $(cost)
execute as @s[team=blue] unless entity @n[tag=SSIEGE_BLUE_SHOPKEEPER,distance=..20] run return run tellraw @s ["",{"text":"You are "},{"text":"too far away","color":"red"},{"text":" from your "},{"text":"Shopkeeper","color":"yellow"},{"text":"!"}]
execute as @s[team=red] unless entity @n[tag=SSIEGE_RED_SHOPKEEPER,distance=..20] run return run tellraw @s ["",{"text":"You are "},{"text":"too far away","color":"red"},{"text":" from your "},{"text":"Shopkeeper","color":"yellow"},{"text":"!"}]

execute as @s[team=blue] if score @s ssiege_perk_homeguard < %blue_cost ssiege_perk_homeguard run execute store result storage ssiege:temp refund int 1 run scoreboard players get @s ssiege_perk_homeguard
execute as @s[team=blue] if score @s ssiege_perk_homeguard < %blue_cost ssiege_perk_homeguard run return run function ssiege:shop/perks/purchase/refund with storage ssiege:temp
execute as @s[team=red] if score @s ssiege_perk_homeguard < %red_cost ssiege_perk_homeguard run execute store result storage ssiege:temp refund int 1 run scoreboard players get @s ssiege_perk_homeguard
execute as @s[team=red] if score @s ssiege_perk_homeguard < %red_cost ssiege_perk_homeguard run return run function ssiege:shop/perks/purchase/refund with storage ssiege:temp

# Successful purchase
execute as @s[team=blue] run tellraw @a ["",{"selector":"@s"},{"text":" purchased "},{"text":"Homeguard Level ","color":"green"},{"score":{"name":"%blue","objective":"ssiege_perk_homeguard"},"color":"green"},{"text":" for ","color":"white"},{"text":"Blue team!","color":"blue"},{"text":" (Cost: ","color":"white"},{"score":{"name":"%blue_cost","objective":"ssiege_perk_homeguard"},"color":"white"},{"text":")","color":"white"}]
execute as @s[team=red] run tellraw @a ["",{"selector":"@s"},{"text":" purchased "},{"text":"Homeguard Level ","color":"green"},{"score":{"name":"%red","objective":"ssiege_perk_homeguard"},"color":"green"},{"text":" for ","color":"white"},{"text":"Red team!","color":"red"},{"text":" (Cost: ","color":"white"},{"score":{"name":"%red_cost","objective":"ssiege_perk_homeguard"},"color":"white"},{"text":")","color":"white"}]

# Update Perk score
execute as @s[team=blue] run scoreboard players add %blue ssiege_perk_homeguard 1
execute as @s[team=red] run scoreboard players add %red ssiege_perk_homeguard 1

# Update Price
execute as @s[team=blue] run function ssiege:shop/perks/update_blue_perk_costs
execute as @s[team=red] run function ssiege:shop/perks/update_red_perk_costs

# Re-render the shop with new prices for all currently shopping players
execute as @s[team=blue] as @a[team=blue,scores={ssiege_currently_shopping=1}] run function ssiege:shop/perks/show_blue_perk_shop
execute as @s[team=red] as @a[team=red,scores={ssiege_currently_shopping=1}] run function ssiege:shop/perks/show_red_perk_shop