$execute store result score @s ssiege_unlocked_runesmith run clear @s nether_star[custom_data={ssiege_soulshard:true}] $(cost)

execute if score @s ssiege_unlocked_runesmith < @s ssiege_rune_strength_cost run scoreboard players operation %cost ssiege_unlocked_runesmith = @s ssiege_rune_strength_cost
execute if score @s ssiege_unlocked_runesmith < @s ssiege_rune_strength_cost run function ssiege:shop/runes/purchase/bank_check
execute if score @s ssiege_unlocked_runesmith < @s ssiege_rune_strength_cost run execute store result storage ssiege:temp shop.refund int 1 run scoreboard players get @s ssiege_unlocked_runesmith
execute if score @s ssiege_unlocked_runesmith < @s ssiege_rune_strength_cost run return run function ssiege:shop/runes/purchase/refund with storage ssiege:temp shop

function ssiege:shop/runes/effects/update_strength

# Update Strength rune score
scoreboard players add @s ssiege_rune_strength 1

scoreboard players add @s ssiege_runes_purchased 1
playsound minecraft:block.anvil.use master @s ~ ~ ~ 1 1 1

# After purchase, increase the cost
execute if score @s ssiege_rune_strength_cost matches 16 run scoreboard players set @s ssiege_rune_strength_cost 999
execute if score @s ssiege_rune_strength_cost matches 8 run scoreboard players set @s ssiege_rune_strength_cost 16
execute if score @s ssiege_rune_strength_cost matches 3 run scoreboard players set @s ssiege_rune_strength_cost 8
execute if score @s ssiege_rune_strength_cost matches 1 run scoreboard players set @s ssiege_rune_strength_cost 3

# Re-render the shop with new prices
function ssiege:shop/runes/show_rune_shop

tellraw @s ["",{"text":"The "},{"text":"Rune of Strength","color":"yellow"},{"text":" granted you "},{"text":"+4% attack damage","color":"green"},{"text":"!\nTotal Purchased: "},{"score":{"name":"@s","objective":"ssiege_rune_strength"}}]