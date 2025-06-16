advancement revoke @s only ssiege:titans/player_killed_arachne

# Spawn Soul Shards
scoreboard players set %MULT_CONST uhcp_initStatus 4
execute as @s at @s run function ssiege:titans/spreadloot
scoreboard players add @s ssiege_titans_slain 1

# Arachne Team Buff
execute as @s[team=blue] run loot give @a[team=blue] loot uhcp:consumables/web_slinger
execute as @s[team=red] run loot give @a[team=red] loot uhcp:consumables/web_slinger
execute as @s[team=blue] run loot give @a[team=blue] loot uhcp:consumables/web_slinger
execute as @s[team=red] run loot give @a[team=red] loot uhcp:consumables/web_slinger

# Titan's Might buff
execute as @s[team=blue] run scoreboard players add @a[team=blue] ssiege_buff_titanslayer 5
execute as @s[team=red] run scoreboard players add @a[team=red] ssiege_buff_titanslayer 5

# Schedule buff removal after 5 minutes
schedule clear ssiege:titans/reset_titanslayer
schedule function ssiege:titans/reset_titanslayer 6000t

execute as @s[team=blue] run tellraw @a[team=blue] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Arachne","bold":true,"color":"gold"},{"text":"! Your team gained a "},{"text":"Web Slinger","color":"yellow"},{"text":" and the "},{"text":"Titan's Might","color":"gold","hover_event":{"action":"show_text","value":"Titan's Might grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 5 minutes!"}]

execute as @s[team=blue] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Arachne","bold":true,"color":"gold"},{"text":"... The other team gained a "},{"text":"Web Slinger","color":"yellow"},{"text":" and the "},{"text":"Titan's Might","color":"gold","hover_event":{"action":"show_text","value":"Titan's Might grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 5 minutes."}]

execute as @s[team=red] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Arachne","bold":true,"color":"gold"},{"text":"! Your team gained a "},{"text":"Web Slingers","color":"yellow"},{"text":" and the "},{"text":"Titan's Might","color":"gold","hover_event":{"action":"show_text","value":"Titan's Might grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 5 minutes!"}]

execute as @s[team=red] run tellraw @a[team=blue] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Arachne","bold":true,"color":"gold"},{"text":"... The other team gained a "},{"text":"Web Slinger","color":"yellow"},{"text":" and the "},{"text":"Titan's Might","color":"gold","hover_event":{"action":"show_text","value":"Titan's Might grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 5 minutes."}]