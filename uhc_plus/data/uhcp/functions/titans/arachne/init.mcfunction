summon spider ~ ~ ~ {CustomNameVisible:0b,PersistenceRequired:1b,Health:900f,Tags:["UHCP_Titan","UHCP_Arachne","UHCP_New"],CustomName:'{"text":"Arachne","color":"red","bold":true}',Attributes:[{Name:"generic.max_health",Base:900},{Name:"generic.knockback_resistance",Base:0.90},{Name:"generic.scale",Base:4},{Name:"generic.follow_range",Base:80},{Name:"generic.step_height",Base:2},{Name:"generic.fall_damage_multiplier",Base:0},{Name:"generic.attack_damage",Base:0},{Name:"generic.armor",Base:5}]}

# Initialize bossbar and boss ID
execute store result bossbar minecraft:uhcp_arachnehealth max run data get entity @e[tag=UHCP_New,tag=UHCP_Titan,sort=nearest,limit=1] Health
scoreboard players set @e[tag=UHCP_New,tag=UHCP_Titan,sort=nearest,limit=1] uhcp_titans_ID 1