$execute store success score @s ssiege_perk_regen run clear @s diamond $(cost)
execute as @s[team=blue] unless entity @n[tag=SSIEGE_BLUE_SHOPKEEPER,distance=..20] run return run tellraw @s ["",{"text":"You are "},{"text":"too far away","color":"red"},{"text":" from your "},{"text":"Shopkeeper","color":"yellow"},{"text":"!"}]
execute as @s[team=red] unless entity @n[tag=SSIEGE_RED_SHOPKEEPER,distance=..20] run return run tellraw @s ["",{"text":"You are "},{"text":"too far away","color":"red"},{"text":" from your "},{"text":"Shopkeeper","color":"yellow"},{"text":"!"}]
execute if score @s ssiege_perk_regen matches 0 run return run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"Diamonds","color":"aqua"},{"text":" for that ","color":"red"},{"text":"Perk","color":"yellow"},{"text":" (need $(cost).","color":"red"}]

# Successful purchase
tellraw @a[team=blue] ["",{"selector":"@s"},{"text":" purchased "},{"text":"Regeneration Level ","color":"green"},{"score":{"name":"%blue","objective":"ssiege_perk_regen"},"color":"green"},{"text":" for ","color":"white"},{"text":"your team!","color":"blue"}]
tellraw @a[team=red] ["",{"selector":"@s"},{"text":" purchased "},{"text":"Regeneration Level ","color":"green"},{"score":{"name":"%red","objective":"ssiege_perk_regen"},"color":"green"},{"text":" for ","color":"white"},{"text":"your team!","color":"red"}]

# Update Perk score
execute as @s[team=blue] run scoreboard players add %blue ssiege_perk_regen 1
execute as @s[team=red] run scoreboard players add %red ssiege_perk_regen 1

# Update Price
execute as @s[team=blue] run return run function ssiege:shop/perks/update_blue_perk_costs
execute as @s[team=red] run function ssiege:shop/perks/update_red_perk_costs