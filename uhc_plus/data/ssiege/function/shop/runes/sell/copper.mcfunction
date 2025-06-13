execute store result score @s ssiege_unlocked_runesmith run clear @s minecraft:copper_block 3
execute as @s[team=blue] unless entity @n[tag=SSIEGE_BLUE_RUNESMITH,distance=..20] run return run tellraw @s ["",{"text":"You are "},{"text":"too far away","color":"red"},{"text":" from your "},{"text":"Runesmith","color":"light_purple"},{"text":"!"}]
execute as @s[team=red] unless entity @n[tag=SSIEGE_RED_RUNESMITH,distance=..20] run return run tellraw @s ["",{"text":"You are "},{"text":"too far away","color":"red"},{"text":" from your "},{"text":"Runesmith","color":"light_purple"},{"text":"!"}]
execute if score @s ssiege_unlocked_runesmith matches ..2 run execute store result storage ssiege:temp refund int 1 run scoreboard players get @s ssiege_unlocked_runesmith
execute if score @s ssiege_unlocked_runesmith matches ..2 run return run function ssiege:shop/runes/sell/refund_copper with storage ssiege:temp

loot give @s loot ssiege:soulshard

tellraw @s ["",{"text":"You sold 3 Copper Blocks for a "},{"text":"Soul Shard","color":"light_purple"},{"text":"!"}]