execute store result score @s ssiege_unlocked_runesmith run clear @s nether_star[custom_data={ssiege_soulshard:true}] 8
execute as @s[team=blue] unless entity @n[tag=SSIEGE_BLUE_RUNESMITH,distance=..20] run return run tellraw @s ["",{"text":"You are "},{"text":"too far away","color":"red"},{"text":" from your "},{"text":"Runesmith","color":"light_purple"},{"text":"!"}]
execute as @s[team=red] unless entity @n[tag=SSIEGE_RED_RUNESMITH,distance=..20] run return run tellraw @s ["",{"text":"You are "},{"text":"too far away","color":"red"},{"text":" from your "},{"text":"Runesmith","color":"light_purple"},{"text":"!"}]
execute if score @s ssiege_unlocked_runesmith matches ..7 run scoreboard players set %cost uhcp_initStatus 8
execute if score @s ssiege_unlocked_runesmith matches ..7 run function ssiege:shop/runes/purchase/bank_check
execute if score @s ssiege_unlocked_runesmith matches ..7 run execute store result storage ssiege:temp refund int 1 run scoreboard players get @s ssiege_unlocked_runesmith
execute if score @s ssiege_unlocked_runesmith matches ..7 run return run function ssiege:shop/runes/purchase/refund_consumable with storage ssiege:temp

give @s ender_pearl 1

tellraw @s ["",{"text":"You purchased an "},{"text":"Ender Pearl","color":"yellow"},{"text":"!"}]
function ssiege:shop/runes/show_rune_shop