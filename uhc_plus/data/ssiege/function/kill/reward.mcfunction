scoreboard players operation @s ssiege_multi = %temp ssiege_multi
scoreboard players set %killer_exists ssiege_multi 1
loot give @s loot ssiege:multi_soulshard
tellraw @s ["",{"text":"You gained "},{"score":{"name":"@s","objective":"ssiege_multi"}},{"text":" Soul Shards","color":"light_purple"},{"text":" for the kill!"}]
advancement revoke @s only ssiege:killed_player