advancement revoke @s only ssiege:titans/player_killed_fenrir

# Spawn Soul Shards
scoreboard players set %MULT_CONST uhcp_initStatus 3
execute as @s at @s run function ssiege:titans/spreadloot

# Fenrir Team Buff
execute as @s[team=blue] as @a[team=blue,gamemode=survival] at @s run summon wolf ~ ~ ~ {Team:"blue",Tags:["SSIEGE_fenrir_reward"],variant:"black"}
execute as @e[type=wolf,tag=SSIEGE_fenrir_reward,team=blue] run data modify entity @s Owner set from entity @p[team=blue,gamemode=survival] UUID

execute as @s[team=red] as @a[team=red,gamemode=survival] at @s run summon wolf ~ ~ ~ {Team:"red",Tags:["SSIEGE_fenrir_reward"],variant:"black"}
execute as @e[type=wolf,tag=SSIEGE_fenrir_reward,team=red] run data modify entity @s Owner set from entity @p[team=red,gamemode=survival] UUID

# Titan Slayer buff
execute as @s[team=blue] run scoreboard players add @a[team=blue] ssiege_buff_titanslayer 2
execute as @s[team=red] run scoreboard players add @a[team=red] ssiege_buff_titanslayer 2

# Schedule buff removal after 3 minutes
schedule function ssiege:titans/reset_titanslayer 3600 append

execute as @s[team=blue] run tellraw @a[team=blue] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Fenrir","bold":true,"color":"red"},{"text":"! Your team gains "},{"text":"Wolves","color":"yellow"},{"text":" and the "},{"text":"Titan Slayer","color":"red","hover_event":{"action":"show_text","value":"Titan Slayer grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 3 minutes!"}]

execute as @s[team=blue] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Fenrir","bold":true,"color":"red"},{"text":"... The other team gained "},{"text":"Wolves","color":"yellow"},{"text":" and the "},{"text":"Titan Slayer","color":"red","hover_event":{"action":"show_text","value":"Titan Slayer grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 3 minutes."}]

execute as @s[team=red] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Fenrir","bold":true,"color":"red"},{"text":"! Your team gains "},{"text":"Wolves","color":"yellow"},{"text":" and the "},{"text":"Titan Slayer","color":"red","hover_event":{"action":"show_text","value":"Titan Slayer grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 3 minutes!"}]

execute as @s[team=red] run tellraw @a[team=blue] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Fenrir","bold":true,"color":"red"},{"text":"... The other team gained "},{"text":"Wolves","color":"yellow"},{"text":" and the "},{"text":"Titan Slayer","color":"red","hover_event":{"action":"show_text","value":"Titan Slayer grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 3 minutes."}]