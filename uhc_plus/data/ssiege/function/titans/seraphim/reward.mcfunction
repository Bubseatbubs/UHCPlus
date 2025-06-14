advancement revoke @s only ssiege:titans/player_killed_seraphim

kill @e[type=vex]

# Spawn Soul Shards
scoreboard players set %MULT_CONST uhcp_initStatus 4
execute as @s at @s run function ssiege:titans/spreadloot
scoreboard players add @s ssiege_titans_slain 1

# Seraphim Team Buff - 6 Wind Charges per player
execute as @s[team=blue] as @a[team=blue,gamemode=survival] at @s run give @s minecraft:wind_charge 6
execute as @s[team=red] as @a[team=red,gamemode=survival] at @s run give @s minecraft:wind_charge 6

# Titan's Might buff
execute as @s[team=blue] run scoreboard players add @a[team=blue] ssiege_buff_titanslayer 4
execute as @s[team=red] run scoreboard players add @a[team=red] ssiege_buff_titanslayer 4

# Schedule buff removal after 5 minutes
schedule clear ssiege:titans/reset_titanslayer
schedule function ssiege:titans/reset_titanslayer 6000t

execute as @s[team=blue] run tellraw @a[team=blue] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Seraphim","bold":true,"color":"light_purple"},{"text":"! Your team gains "},{"text":"Wind Charges","color":"aqua"},{"text":" and the "},{"text":"Titan's Might","color":"gold","hover_event":{"action":"show_text","value":"Titan's Might grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 5 minutes!"}]

execute as @s[team=blue] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Seraphim","bold":true,"color":"light_purple"},{"text":"... The other team gained "},{"text":"Wind Charges","color":"aqua"},{"text":" and the "},{"text":"Titan's Might","color":"gold","hover_event":{"action":"show_text","value":"Titan's Might grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 5 minutes."}]

execute as @s[team=red] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Seraphim","bold":true,"color":"light_purple"},{"text":"! Your team gains "},{"text":"Wind Charges","color":"aqua"},{"text":" and the "},{"text":"Titan's Might","color":"gold","hover_event":{"action":"show_text","value":"Titan's Might grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 5 minutes!"}]

execute as @s[team=red] run tellraw @a[team=blue] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Seraphim","bold":true,"color":"light_purple"},{"text":"... The other team gained "},{"text":"Wind Charges","color":"aqua"},{"text":" and the "},{"text":"Titan's Might","color":"gold","hover_event":{"action":"show_text","value":"Titan's Might grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 5 minutes."}]