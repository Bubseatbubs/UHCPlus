execute store result score @s ssiege_unlocked_runesmith run clear @s nether_star[custom_data={ssiege_soulshard:true}] 10

data modify storage ssiege:temp shop.cost set value 10
execute store result score %success uhcp_initStatus run function ssiege:shop/runes/purchase/check_enough_consumable
execute if score %success uhcp_initStatus matches 0 run return fail

loot give @s loot uhcp:consumables/royal_jelly

tellraw @s ["",{"text":"You purchased a "},{"text":"Royal Jelly","color":"yellow"},{"text":"!"}]
function ssiege:shop/runes/show_consumable_shop