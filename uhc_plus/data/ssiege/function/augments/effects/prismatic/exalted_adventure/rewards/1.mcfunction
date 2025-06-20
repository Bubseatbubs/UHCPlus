tag @s add SSIEGE_PermaStrength
effect give @s strength infinite 0 true
give @s golden_apple 10
scoreboard players set @s ssiege_multi 10
loot give @s loot ssiege:multi_soulshard
tellraw @s ["",{"text":"You gained "},{"text":"permanent Strength","color":"yellow"},{"text":", "},{"text":"10 Golden Apples","color":"yellow"},{"text":", and "},{"text":"10 Soul Shards","color":"light_purple"},{"text":"!"}]