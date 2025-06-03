advancement revoke @s only ssiege:titans/player_killed_arachne

# Spawn Soul Shards
scoreboard players set %MULT_CONST uhcp_initStatus 3
execute as @s at @s run function ssiege:titans/spreadloot

# Arachne Team Buff
execute as @s[team=blue] run loot give @a[team=blue] loot uhcp:consumables/web_slinger
execute as @s[team=blue] run loot give @a[team=blue] loot uhcp:consumables/web_slinger
execute as @s[team=red] run loot give @a[team=red] loot uhcp:consumables/web_slinger
execute as @s[team=red] run loot give @a[team=red] loot uhcp:consumables/web_slinger

# Titan Slayer buff
execute as @s[team=blue] run scoreboard players add @a[team=blue] ssiege_buff_titanslayer 2
execute as @s[team=red] run scoreboard players add @a[team=red] ssiege_buff_titanslayer 2

# Schedule buff removal after 3 minutes
schedule function ssiege:titans/reset_titanslayer 3600t

execute as @s[team=blue] run tellraw @a[team=blue] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Arachne","bold":true,"color":"red"},{"text":"! Your team gains "},{"text":"Web Slingers","color":"yellow"},{"text":" and the "},{"text":"Titan Slayer","color":"red","hover_event":{"action":"show_text","value":"Titan Slayer grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 3 minutes!"}]

execute as @s[team=blue] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Arachne","bold":true,"color":"red"},{"text":"... The other team gained "},{"text":"Web Slingers","color":"yellow"},{"text":" and the "},{"text":"Titan Slayer","color":"red","hover_event":{"action":"show_text","value":"Titan Slayer grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 3 minutes."}]

execute as @s[team=red] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Arachne","bold":true,"color":"red"},{"text":"! Your team gains "},{"text":"Web Slingers","color":"yellow"},{"text":" and the "},{"text":"Titan Slayer","color":"red","hover_event":{"action":"show_text","value":"Titan Slayer grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 3 minutes!"}]

execute as @s[team=red] run tellraw @a[team=blue] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Arachne","bold":true,"color":"red"},{"text":"... The other team gained "},{"text":"Web Slingers","color":"yellow"},{"text":" and the "},{"text":"Titan Slayer","color":"red","hover_event":{"action":"show_text","value":"Titan Slayer grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 3 minutes."}]