summon sniffer ~-0.5 ~2 ~-0.5 {Glowing:1b,CustomNameVisible:0b,Team:"red",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:1000f,Rotation:[-90F,-15F],Tags:["redsniffer","SSIEGE_sniffer"],CustomName:{"bold":true,"color":"red","text":"Red Sniffer"},active_effects:[{id:"minecraft:fire_resistance",amplifier:0,duration:-1,show_particles:0b,show_icon:0b}],attributes:[{id:"minecraft:knockback_resistance",base:1},{id:"minecraft:max_health",base:1000},{id:"minecraft:scale",base:5.2}]}
summon interaction ~-2 ~2 ~-0.5 {width:10.25,height:11,Tags:["RS_Hitbox","SSIEGE_Hitbox"]}
summon interaction ~1.5 ~2 ~-0.5 {width:10.25,height:11,Tags:["RS_Hitbox","SSIEGE_Hitbox"]}
summon interaction ~10 ~3 ~-0.5 {width:6,height:6,Tags:["RS_Hitbox","SSIEGE_Hitbox"]}
scoreboard players set @e[tag=redsniffer] uhcp_team 13

# uhcp_game_time represents what time Last Stand invuln falls off
scoreboard players set @e[tag=redsniffer] uhcp_game_time 0

# Represents if Last Stand has been used
scoreboard players set @e[tag=redsniffer] ssiege_unlocked_runesmith 1