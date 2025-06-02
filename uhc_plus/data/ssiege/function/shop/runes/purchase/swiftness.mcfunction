$execute store result score @s ssiege_unlocked_runesmith run clear @s nether_star[custom_data={ssiege_soulshard:true}] $(cost)
execute as @s[team=blue] unless entity @n[tag=SSIEGE_BLUE_RUNESMITH,distance=..20] run return run tellraw @s ["",{"text":"You are "},{"text":"too far away","color":"red"},{"text":" from your "},{"text":"Runesmith","color":"light_purple"},{"text":"!"}]
execute as @s[team=red] unless entity @n[tag=SSIEGE_RED_RUNESMITH,distance=..20] run return run tellraw @s ["",{"text":"You are "},{"text":"too far away","color":"red"},{"text":" from your "},{"text":"Runesmith","color":"light_purple"},{"text":"!"}]
execute if score @s ssiege_unlocked_runesmith < @s ssiege_rune_swiftness_cost run execute store result storage ssiege:temp refund int 1 run scoreboard players get @s ssiege_unlocked_runesmith
execute if score @s ssiege_unlocked_runesmith < @s ssiege_rune_swiftness_cost run return run function ssiege:shop/runes/purchase/refund with storage ssiege:temp

function ssiege:shop/runes/effects/update_swiftness

# Update Swiftness rune score
scoreboard players add @s ssiege_rune_swiftness 1

# After purchase, increase the cost
execute if score @s ssiege_rune_swiftness_cost matches 16 run scoreboard players set @s ssiege_rune_swiftness_cost 999
execute if score @s ssiege_rune_swiftness_cost matches 8 run scoreboard players set @s ssiege_rune_swiftness_cost 16
execute if score @s ssiege_rune_swiftness_cost matches 3 run scoreboard players set @s ssiege_rune_swiftness_cost 8
execute if score @s ssiege_rune_swiftness_cost matches 1 run scoreboard players set @s ssiege_rune_swiftness_cost 3

# Re-render the shop with new prices
function ssiege:shop/runes/show_rune_shop

tellraw @s ["",{"text":"The "},{"text":"Rune of Swiftness","color":"yellow"},{"text":" granted you "},{"text":"+4% movement and attack speed","color":"green"},{"text":"!\nTotal Purchased: "},{"score":{"name":"@s","objective":"ssiege_rune_swiftness"}}]