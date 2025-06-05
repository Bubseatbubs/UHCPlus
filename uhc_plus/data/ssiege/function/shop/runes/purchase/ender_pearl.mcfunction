execute store success score @s ssiege_unlocked_runesmith run clear @s nether_star[custom_data={ssiege_soulshard:true}] 1
execute as @s[team=blue] unless entity @n[tag=SSIEGE_BLUE_RUNESMITH,distance=..20] run return run tellraw @s ["",{"text":"You are "},{"text":"too far away","color":"red"},{"text":" from your "},{"text":"Runesmith","color":"light_purple"},{"text":"!"}]
execute as @s[team=red] unless entity @n[tag=SSIEGE_RED_RUNESMITH,distance=..20] run return run tellraw @s ["",{"text":"You are "},{"text":"too far away","color":"red"},{"text":" from your "},{"text":"Runesmith","color":"light_purple"},{"text":"!"}]
execute if score @s ssiege_unlocked_runesmith matches 0 run return run tellraw @s ["",{"text":"You don't have any ","color":"red"},{"text":"Soul Shards","color":"light_purple"},{"text":"!","color":"red"}]

give @s ender_pearl 2

tellraw @s ["",{"text":"You purchased 2 "},{"text":"Ender Pearls","color":"yellow"},{"text":"!"}]