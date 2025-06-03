advancement revoke @s only ssiege:titans/player_killed_gallie

# Spawn Soul Shards
scoreboard players set %MULT_CONST uhcp_initStatus 14
execute as @s at @s run function ssiege:titans/spreadloot

# Gallie team buff
execute as @s[team=blue] as @a[team=blue] run attribute @s max_health base set 24
execute as @s[team=red] as @a[team=red] run attribute @s max_health base set 24

# Titan Slayer buff
execute as @s[team=blue] run scoreboard players add @a[team=blue] ssiege_buff_titanslayer 12
execute as @s[team=red] run scoreboard players add @a[team=red] ssiege_buff_titanslayer 12

# Schedule buff removal after 3 minutes
schedule function ssiege:titans/reset_titanslayer 3600t

execute as @s[team=blue] run tellraw @a[team=blue] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Gallie & Bellan","bold":true,"color":"red"},{"text":"! Your team gains "},{"text":"2 max ❤","color":"yellow"},{"text":" and the "},{"text":"Titan Slayer","color":"red","hover_event":{"action":"show_text","value":"Titan Slayer grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 3 minutes!"}]

execute as @s[team=blue] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Gallie & Bellan","bold":true,"color":"red"},{"text":"... The other team gained "},{"text":"2 max ❤","color":"yellow"},{"text":" and the "},{"text":"Titan Slayer","color":"red","hover_event":{"action":"show_text","value":"Titan Slayer grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 3 minutes."}]

execute as @s[team=red] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Gallie & Bellan","bold":true,"color":"red"},{"text":"! Your team gains "},{"text":"2 max ❤","color":"yellow"},{"text":" and the "},{"text":"Titan Slayer","color":"red","hover_event":{"action":"show_text","value":"Titan Slayer grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 3 minutes!"}]

execute as @s[team=red] run tellraw @a[team=blue] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Gallie & Bellan","bold":true,"color":"red"},{"text":"... The other team gained "},{"text":"2 max ❤","color":"yellow"},{"text":" and the "},{"text":"Titan Slayer","color":"red","hover_event":{"action":"show_text","value":"Titan Slayer grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 3 minutes."}]