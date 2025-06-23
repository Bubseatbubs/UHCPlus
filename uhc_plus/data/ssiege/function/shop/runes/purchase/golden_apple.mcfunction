execute store success score @s ssiege_unlocked_runesmith run clear @s nether_star[custom_data={ssiege_soulshard:true}] 1

data merge storage ssiege:temp {shop.cost:1}
execute store result score %success uhcp_initStatus run function ssiege:shop/runes/purchase/check_enough_consumable
execute if score %success uhcp_initStatus matches 0 run return fail

execute at @s[tag=!SSIEGE_dead] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:golden_apple",count:1},PickupDelay:2}
execute at @s[tag=SSIEGE_dead] run give @s golden_apple

tellraw @s ["",{"text":"You purchased 1 "},{"text":"Golden Apple","color":"yellow"},{"text":"!"}]
function ssiege:shop/runes/show_consumable_shop