advancement revoke @s only ssiege:titans/player_killed_gallie

# Spawn Soul Shards
scoreboard players set %MULT_CONST uhcp_initStatus 14
execute as @s at @s run function ssiege:titans/spreadloot
scoreboard players add @s ssiege_titans_slain 1

# Gallie team buff
execute as @s[team=blue] as @a[team=blue] run attribute @s minecraft:max_health modifier add uhcp:max_health 4 add_value
execute as @s[team=red] as @a[team=red] run attribute @s minecraft:max_health modifier add uhcp:max_health 4 add_value

# Titan's Might buff
execute as @s[team=blue] run scoreboard players add @a[team=blue] ssiege_buff_titanslayer 20
execute as @s[team=red] run scoreboard players add @a[team=red] ssiege_buff_titanslayer 20

# Schedule buff removal after 5 minutes
schedule clear ssiege:titans/reset_titanslayer
schedule function ssiege:titans/reset_titanslayer 6000t

execute as @s[team=blue] run tellraw @a[team=blue] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Gallie & Bellan","bold":true,"color":"gold"},{"text":"! Your team gains "},{"text":"2 max ❤","color":"yellow"},{"text":" and the "},{"text":"Titan's Might","color":"gold","hover_event":{"action":"show_text","value":"Titan's Might grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 5 minutes!"}]

execute as @s[team=blue] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Gallie & Bellan","bold":true,"color":"gold"},{"text":"... The other team gained "},{"text":"2 max ❤","color":"yellow"},{"text":" and the "},{"text":"Titan's Might","color":"gold","hover_event":{"action":"show_text","value":"Titan's Might grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 5 minutes."}]

execute as @s[team=red] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Gallie & Bellan","bold":true,"color":"gold"},{"text":"! Your team gains "},{"text":"2 max ❤","color":"yellow"},{"text":" and the "},{"text":"Titan's Might","color":"gold","hover_event":{"action":"show_text","value":"Titan's Might grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 5 minutes!"}]

execute as @s[team=red] run tellraw @a[team=blue] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Gallie & Bellan","bold":true,"color":"gold"},{"text":"... The other team gained "},{"text":"2 max ❤","color":"yellow"},{"text":" and the "},{"text":"Titan's Might","color":"gold","hover_event":{"action":"show_text","value":"Titan's Might grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 5 minutes."}]