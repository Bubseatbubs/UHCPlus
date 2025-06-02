advancement revoke @s only ssiege:titans/player_killed_gallie

# Spawn Soul Shards
scoreboard players set %MULT_CONST uhcp_initStatus 8
execute as @s at @s run function ssiege:titans/spreadloot

# TODO: Actually upgrade the armor
execute as @s[team=blue] run give @a[team=blue] netherite_chestplate[enchantments={"minecraft:protection":1}] 1
execute as @s[team=red] run give @a[team=red] netherite_chestplate[enchantments={"minecraft:protection":1}] 1

# Titan Slayer buff
execute as @s[team=blue] run scoreboard players add @a[team=blue] ssiege_buff_titanslayer 8
execute as @s[team=red] run scoreboard players add @a[team=red] ssiege_buff_titanslayer 8

# Schedule buff removal after 3 minutes
schedule function ssiege:titans/reset_titanslayer 3600 append

execute as @s[team=blue] run tellraw @a[team=blue] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Tyrion, Relic Forger","bold":true,"color":"red"},{"text":"! Your team gains "},{"text":"Netherite Chestplates","color":"yellow"},{"text":" and the "},{"text":"Titan Slayer","color":"red","hover_event":{"action":"show_text","value":"Titan Slayer grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 3 minutes!"}]

execute as @s[team=blue] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Tyrion, Relic Forger","bold":true,"color":"red"},{"text":"... The other team gained "},{"text":"Netherite Chestplates","color":"yellow"},{"text":" and the "},{"text":"Titan Slayer","color":"red","hover_event":{"action":"show_text","value":"Titan Slayer grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 3 minutes."}]

execute as @s[team=red] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Tyrion, Relic Forger","bold":true,"color":"red"},{"text":"! Your team gains "},{"text":"Netherite Chestplates","color":"yellow"},{"text":" and the "},{"text":"Titan Slayer","color":"red","hover_event":{"action":"show_text","value":"Titan Slayer grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 3 minutes!"}]

execute as @s[team=red] run tellraw @a[team=blue] ["",{"selector":"@s"},{"text":" has slain "},{"text":"Tyrion, Relic Forger","bold":true,"color":"red"},{"text":"... The other team gained "},{"text":"Netherite Chestplates","color":"yellow"},{"text":" and the "},{"text":"Titan Slayer","color":"red","hover_event":{"action":"show_text","value":"Titan Slayer grants movement speed and bonus damage to Sniffers, increasing as the game goes on."}},{"text":" buff for 3 minutes."}]