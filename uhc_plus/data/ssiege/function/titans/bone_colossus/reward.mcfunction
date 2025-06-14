advancement revoke @s only ssiege:titans/player_killed_bone_colossus

# Spawn Soul Shards
scoreboard players set %MULT_CONST uhcp_initStatus 8
execute as @s at @s run function ssiege:titans/spreadloot
scoreboard players add @s ssiege_titans_slain 1

# Bone Colossus Team Buff - Wolves
execute as @s[team=blue] as @a[team=blue,gamemode=survival] at @s run summon wolf ~ ~ ~ {Team:"blue",PersistenceRequired:1b,Health:60f,variant:"black",Tags:["SSIEGE_fenrir_reward"],CustomName:"Fenrir Jr",attributes:[{id:"minecraft:max_health",base:60},{id:"minecraft:scale",base:2}]}
execute as @e[type=wolf,tag=SSIEGE_fenrir_reward,team=blue] run data modify entity @s Owner set from entity @p[team=blue,gamemode=survival] UUID

execute as @s[team=red] as @a[team=red,gamemode=survival] at @s run summon wolf ~ ~ ~ {Team:"red",PersistenceRequired:1b,Health:60f,variant:"black",Tags:["SSIEGE_fenrir_reward"],CustomName:"Fenrir Jr",attributes:[{id:"minecraft:max_health",base:60},{id:"minecraft:scale",base:2}]}
execute as @e[type=wolf,tag=SSIEGE_fenrir_reward,team=red] run data modify entity @s Owner set from entity @p[team=red,gamemode=survival] UUID

# Titan's Might buff
execute as @s[team=blue] run scoreboard players add @a[team=blue] ssiege_buff_titanslayer 8
execute as @s[team=red] run scoreboard players add @a[team=red] ssiege_buff_titanslayer 8

# Schedule buff removal after 5 minutes
schedule clear ssiege:titans/reset_titanslayer
schedule function ssiege:titans/reset_titanslayer 6000t

execute as @s[team=blue] run tellraw @a[team=blue] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Bone Colossus","bold":true,"color":"gray"},{"text":"! Your team gains "},{"text":"Wolves","color":"yellow"},{"text":" and the "},{"text":"Titan's Might","color":"gold","hover_event":{"action":"show_text","value":"Titan's Might grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 5 minutes!"}]

execute as @s[team=blue] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Bone Colossus","bold":true,"color":"gray"},{"text":"... The other team gained "},{"text":"Wolves","color":"yellow"},{"text":" and the "},{"text":"Titan's Might","color":"gold","hover_event":{"action":"show_text","value":"Titan's Might grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 5 minutes."}]

execute as @s[team=red] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Bone Colossus","bold":true,"color":"gray"},{"text":"! Your team gains "},{"text":"Wolves","color":"yellow"},{"text":" and the "},{"text":"Titan's Might","color":"gold","hover_event":{"action":"show_text","value":"Titan's Might grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 5 minutes!"}]

execute as @s[team=red] run tellraw @a[team=blue] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Bone Colossus","bold":true,"color":"gray"},{"text":"... The other team gained "},{"text":"Wolves","color":"yellow"},{"text":" and the "},{"text":"Titan's Might","color":"gold","hover_event":{"action":"show_text","value":"Titan's Might grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 5 minutes."}]