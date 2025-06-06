advancement revoke @s only ssiege:titans/player_killed_infernus

# Spawn Soul Shards
scoreboard players set %MULT_CONST uhcp_initStatus 25
execute as @s at @s run function ssiege:titans/spreadloot

# Infernus Team Buff
execute as @s[team=blue] run tag @a[team=blue] add SSIEGE_Infernus_Blessing
execute as @s[team=red] run tag @a[team=red] add SSIEGE_Infernus_Blessing

# Titan Slayer buff
execute as @s[team=blue] run scoreboard players add @a[team=blue] ssiege_buff_titanslayer 20
execute as @s[team=red] run scoreboard players add @a[team=red] ssiege_buff_titanslayer 20

# Schedule buff removal after 5 minutes
schedule clear ssiege:titans/reset_titanslayer
schedule function ssiege:titans/reset_titanslayer 6000t

execute as @s[team=blue] run tellraw @a[team=blue] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Infernus","bold":true,"color":"gold"},{"text":"! Your team gains "},{"text":"Infernus' Blessing","color":"yellow","hover_event":{"action":"show_text","value":"Attacks set target on fire."}},{"text":" and the "},{"text":"Titan Slayer","color":"gold","hover_event":{"action":"show_text","value":"Titan Slayer grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 3 minutes!"}]

execute as @s[team=blue] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Infernus","bold":true,"color":"gold"},{"text":"... The other team gained "},{"text":"Infernus' Blessing","color":"yellow","hover_event":{"action":"show_text","value":"Attacks set target on fire."}},{"text":" and the "},{"text":"Titan Slayer","color":"gold","hover_event":{"action":"show_text","value":"Titan Slayer grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 5 minutes."}]

execute as @s[team=red] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Infernus","bold":true,"color":"gold"},{"text":"! Your team gains "},{"text":"Infernus' Blessing","color":"yellow","hover_event":{"action":"show_text","value":"Attacks set target on fire."}},{"text":" and the "},{"text":"Titan Slayer","color":"gold","hover_event":{"action":"show_text","value":"Titan Slayer grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 3 minutes!"}]

execute as @s[team=red] run tellraw @a[team=blue] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Infernus","bold":true,"color":"gold"},{"text":"... The other team gained "},{"text":"Infernus' Blessing","color":"yellow","hover_event":{"action":"show_text","value":"Attacks set target on fire."}},{"text":" and the "},{"text":"Titan Slayer","color":"gold","hover_event":{"action":"show_text","value":"Titan Slayer grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 5 minutes."}]