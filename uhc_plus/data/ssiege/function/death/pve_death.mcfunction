execute as @s[team=blue] run tellraw @a[team=red] ["",{"selector":"@s","color":"blue"},{"text":" dropped a "},{"text":"Soul Shard","color":"light_purple"},{"text":" at your base."}]
execute as @s[team=red] run tellraw @a[team=blue] ["",{"selector":"@s","color":"red"},{"text":" dropped a "},{"text":"Soul Shard","color":"light_purple"},{"text":" at your base."}]
execute as @s[team=blue] at @n[tag=RED_BASE] run loot spawn ~-85 ~2 ~ loot ssiege:soulshard
execute as @s[team=red] at @n[tag=BLUE_BASE] run loot spawn ~83 ~2 ~-1 loot ssiege:soulshard