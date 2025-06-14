advancement revoke @s only ssiege:titans/player_killed_ferrum

# Spawn Soul Shards
scoreboard players set %MULT_CONST uhcp_initStatus 6
execute as @s at @s run function ssiege:titans/spreadloot
scoreboard players add @s ssiege_titans_slain 1

# Ferrum Team Buff - 6 Absorption Hearts (12 hit points)
execute as @s[team=blue] as @a[team=blue,gamemode=survival] at @s run effect give @s minecraft:absorption infinite 2
execute as @s[team=red] as @a[team=red,gamemode=survival] at @s run effect give @s minecraft:absorption infinite 2

# Titan Slayer buff
execute as @s[team=blue] run scoreboard players add @a[team=blue] ssiege_buff_titanslayer 6
execute as @s[team=red] run scoreboard players add @a[team=red] ssiege_buff_titanslayer 6

# Schedule buff removal after 5 minutes
schedule clear ssiege:titans/reset_titanslayer
schedule function ssiege:titans/reset_titanslayer 6000t

execute as @s[team=blue] run tellraw @a[team=blue] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Ferrum","bold":true,"color":"gray"},{"text":"! Your team gains "},{"text":"6 Absorption Hearts","color":"yellow"},{"text":" and the "},{"text":"Titan Slayer","color":"gold","hover_event":{"action":"show_text","value":"Titan Slayer grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 3 minutes!"}]

execute as @s[team=blue] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Ferrum","bold":true,"color":"gray"},{"text":"... The other team gained "},{"text":"6 Absorption Hearts","color":"yellow"},{"text":" and the "},{"text":"Titan Slayer","color":"gold","hover_event":{"action":"show_text","value":"Titan Slayer grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 5 minutes."}]

execute as @s[team=red] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Ferrum","bold":true,"color":"gray"},{"text":"! Your team gains "},{"text":"6 Absorption Hearts","color":"yellow"},{"text":" and the "},{"text":"Titan Slayer","color":"gold","hover_event":{"action":"show_text","value":"Titan Slayer grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 3 minutes!"}]

execute as @s[team=red] run tellraw @a[team=blue] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Ferrum","bold":true,"color":"gray"},{"text":"... The other team gained "},{"text":"6 Absorption Hearts","color":"yellow"},{"text":" and the "},{"text":"Titan Slayer","color":"gold","hover_event":{"action":"show_text","value":"Titan Slayer grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 5 minutes."}]