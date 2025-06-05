execute store result score @s ssiege_unlocked_runesmith run clear @s nether_star[custom_data={ssiege_soulshard:true}] 16
execute as @s[team=blue] unless entity @n[tag=SSIEGE_BLUE_RUNESMITH,distance=..20] run return run tellraw @s ["",{"text":"You are "},{"text":"too far away","color":"red"},{"text":" from your "},{"text":"Runesmith","color":"light_purple"},{"text":"!"}]
execute as @s[team=red] unless entity @n[tag=SSIEGE_RED_RUNESMITH,distance=..20] run return run tellraw @s ["",{"text":"You are "},{"text":"too far away","color":"red"},{"text":" from your "},{"text":"Runesmith","color":"light_purple"},{"text":"!"}]
execute if score @s ssiege_unlocked_runesmith matches ..15 run execute store result storage ssiege:temp refund int 1 run scoreboard players get @s ssiege_unlocked_runesmith
execute if score @s ssiege_unlocked_runesmith matches ..15 run return run function ssiege:shop/runes/purchase/refund_netherite with storage ssiege:temp

give @s netherite_ingot 1
give @s netherite_upgrade_smithing_template 1

tellraw @s ["",{"text":"You purchased 1 "},{"text":"Netherite Ingot and Upgrade Template","color":"yellow"},{"text":"!"}]