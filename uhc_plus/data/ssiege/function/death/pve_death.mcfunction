execute if score %time uhcp_game_time matches 18000.. run return run function ssiege:death/post_15_pve_death


execute as @s[team=blue] run tellraw @a[team=red] ["",{"selector":"@s","color":"blue"},{"text":" dropped a "},{"text":"Soul Shard","color":"light_purple"},{"text":" at your base."}]
execute as @s[team=red] run tellraw @a[team=blue] ["",{"selector":"@s","color":"red"},{"text":" dropped a "},{"text":"Soul Shard","color":"light_purple"},{"text":" at your base."}]

execute as @s[team=blue] at @n[tag=RED_BASE] run loot insert ~-75 ~1 ~-7 loot ssiege:soulshard
execute as @s[team=red] at @n[tag=BLUE_BASE] run loot insert ~73 ~1 ~6 loot ssiege:soulshard
