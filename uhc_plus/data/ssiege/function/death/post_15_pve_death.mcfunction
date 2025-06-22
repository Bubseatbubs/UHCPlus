scoreboard players operation @s ssiege_multi = %temp ssiege_multi
execute as @s[team=blue] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" dropped "},{"score":{"name":"@s","objective":"ssiege_multi"}},{"text":" Soul Shard(s)","color":"light_purple"},{"text":" at your base."}]
execute as @s[team=red] run tellraw @a[team=blue] ["",{"selector":"@s","color":"red"},{"text":" dropped "},{"score":{"name":"@s","objective":"ssiege_multi"}},{"text":" Soul Shard(s)","color":"light_purple"},{"text":" at your base."}]
execute as @s[team=blue] at @n[tag=RED_BASE] run loot insert ~-75 ~1 ~-7 loot ssiege:multi_soulshard
execute as @s[team=red] at @n[tag=BLUE_BASE] run loot insert ~73 ~1 ~6 loot ssiege:multi_soulshard

execute if score @s ssiege_killstreak matches 0 run scoreboard players add @s ssiege_reverse_bounty 12000
