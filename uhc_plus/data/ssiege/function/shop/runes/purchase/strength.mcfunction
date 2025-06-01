$execute store success score @s ssiege_unlocked_runesmith run clear @s nether_star[custom_data={ssiege_soulshard:true}] $(cost)
execute as @s[team=blue] unless entity @n[tag=SSIEGE_BLUE_RUNESMITH,distance=..20] run return run tellraw @s ["",{"text":"You are "},{"text":"too far away","color":"red"},{"text":" from your "},{"text":"Runesmith","color":"light_purple"},{"text":"!"}]
execute as @s[team=red] unless entity @n[tag=SSIEGE_RED_RUNESMITH,distance=..20] run return run tellraw @s ["",{"text":"You are "},{"text":"too far away","color":"red"},{"text":" from your "},{"text":"Runesmith","color":"light_purple"},{"text":"!"}]
execute if score @s ssiege_unlocked_runesmith matches 0 run return run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"Soul Shards","color":"light_purple"},{"text":" for the ","color":"red"},{"text":"Rune of toughness","color":"yellow"},{"text":" (need ","color":"red"},{"score":{"name":"@s","objective":"ssiege_rune_toughness_cost"},"color":"red"},{"text":").","color":"red"}]

function ssiege:shop/runes/effects/update_strength

# Update Strength rune score
scoreboard players add @s ssiege_rune_strength 1

# After purchase, increase the cost
execute if score @s ssiege_rune_strength_cost matches 16 run scoreboard players set @s ssiege_rune_strength_cost 999
execute if score @s ssiege_rune_strength_cost matches 8 run scoreboard players set @s ssiege_rune_strength_cost 16
execute if score @s ssiege_rune_strength_cost matches 3 run scoreboard players set @s ssiege_rune_strength_cost 8
execute if score @s ssiege_rune_strength_cost matches 1 run scoreboard players set @s ssiege_rune_strength_cost 3

# Re-render the shop with new prices
function ssiege:shop/runes/show_rune_shop

tellraw @s ["",{"text":"The "},{"text":"Rune of Strength","color":"yellow"},{"text":" granted you "},{"text":"+4% attack damage","color":"green"},{"text":"!"}]