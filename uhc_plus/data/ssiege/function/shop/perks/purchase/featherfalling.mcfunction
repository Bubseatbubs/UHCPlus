$execute store result score @s ssiege_unlocked_runesmith run clear @s diamond $(cost)

execute as @s[team=blue] run scoreboard players operation %team_cost ssiege_unlocked_runesmith = %blue_cost ssiege_perk_featherfalling
execute as @s[team=red] run scoreboard players operation %team_cost ssiege_unlocked_runesmith = %red_cost ssiege_perk_featherfalling

execute if score @s ssiege_unlocked_runesmith < %team_cost ssiege_unlocked_runesmith run function ssiege:shop/perks/purchase/bank_check

execute if score @s ssiege_unlocked_runesmith < %team_cost ssiege_unlocked_runesmith run execute store result storage ssiege:temp shop.refund int 1 run scoreboard players get @s ssiege_unlocked_runesmith
execute if score @s ssiege_unlocked_runesmith < %team_cost ssiege_unlocked_runesmith run return run function ssiege:shop/perks/purchase/refund with storage ssiege:temp shop

# Successful purchase
execute at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 1 1
execute as @s[team=blue] run tellraw @a ["",{"selector":"@s"},{"text":" purchased "},{"text":"Feather Falling Level ","color":"green"},{"score":{"name":"%blue","objective":"ssiege_perk_featherfalling"},"color":"green"},{"text":" for ","color":"white"},{"text":"Blue team!","color":"blue"},{"text":" (Cost: ","color":"white"},{"score":{"name":"%blue_cost","objective":"ssiege_perk_featherfalling"},"color":"white"},{"text":")","color":"white"}]
execute as @s[team=red] run tellraw @a ["",{"selector":"@s"},{"text":" purchased "},{"text":"Feather Falling Level ","color":"green"},{"score":{"name":"%red","objective":"ssiege_perk_featherfalling"},"color":"green"},{"text":" for ","color":"white"},{"text":"Red team!","color":"red"},{"text":" (Cost: ","color":"white"},{"score":{"name":"%red_cost","objective":"ssiege_perk_featherfalling"},"color":"white"},{"text":")","color":"white"}]

# Update Perk score
execute as @s[team=blue] run scoreboard players add %blue ssiege_perk_featherfalling 1
execute as @s[team=red] run scoreboard players add %red ssiege_perk_featherfalling 1

function ssiege:shop/perks/effects/feather_falling

# Update Price
execute as @s[team=blue] run function ssiege:shop/perks/update_blue_perk_costs
execute as @s[team=red] run function ssiege:shop/perks/update_red_perk_costs

# Re-render the shop with new prices for all currently shopping players
execute as @s[team=blue] run function ssiege:shop/perks/show_blue_perk_shop
execute as @s[team=red] run function ssiege:shop/perks/show_red_perk_shop
function ssiege:shop/runes/show_rune_shop

execute as @s[team=blue] as @a[team=blue,scores={ssiege_currently_shopping=1}] run function ssiege:shop/perks/show_blue_perk_shop
execute as @s[team=red] as @a[team=red,scores={ssiege_currently_shopping=1}] run function ssiege:shop/perks/show_red_perk_shop