advancement revoke @s only ssiege:titans/played_killed_giga_creeper

# Spawn Soul Shards
scoreboard players set %MULT_CONST uhcp_initStatus 3
execute as @s at @s run function ssiege:titans/spreadloot

# Giga Creeper Team Buff
execute as @s[team=blue] run loot give @a[team=blue] loot uhcp:consumables/grand_gunpowder
execute as @s[team=red] run loot give @a[team=red] loot uhcp:consumables/grand_gunpowder

# Titan Slayer buff
execute as @s[team=blue] run scoreboard players add @a[team=blue] ssiege_buff_titanslayer 2
execute as @s[team=red] run scoreboard players add @a[team=red] ssiege_buff_titanslayer 2

# Schedule buff removal after 5 minutes
schedule clear ssiege:titans/reset_titanslayer
schedule function ssiege:titans/reset_titanslayer 6000t

execute as @s[team=blue] run tellraw @a[team=blue] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Giga Creeper","bold":true,"color":"gold"},{"text":"! Your team gains "},{"text":"Grand Gunpowder","color":"yellow"},{"text":" and the "},{"text":"Titan Slayer","color":"gold","hover_event":{"action":"show_text","value":"Titan Slayer grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 3 minutes!"}]

execute as @s[team=blue] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Giga Creeper","bold":true,"color":"gold"},{"text":"... The other team gained "},{"text":"Grand Gunpowder","color":"yellow"},{"text":" and the "},{"text":"Titan Slayer","color":"gold","hover_event":{"action":"show_text","value":"Titan Slayer grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 5 minutes."}]

execute as @s[team=red] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Giga Creeper","bold":true,"color":"gold"},{"text":"! Your team gains "},{"text":"Grand Gunpowder","color":"yellow"},{"text":" and the "},{"text":"Titan Slayer","color":"gold","hover_event":{"action":"show_text","value":"Titan Slayer grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 3 minutes!"}]

execute as @s[team=red] run tellraw @a[team=blue] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Giga Creeper","bold":true,"color":"gold"},{"text":"... The other team gained "},{"text":"Grand Gunpowder","color":"yellow"},{"text":" and the "},{"text":"Titan Slayer","color":"gold","hover_event":{"action":"show_text","value":"Titan Slayer grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 5 minutes."}]