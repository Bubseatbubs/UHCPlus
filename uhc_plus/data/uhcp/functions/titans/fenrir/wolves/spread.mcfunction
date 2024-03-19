execute at @e[tag=UHCP_WolfMarker,limit=1] as @e[tag=UHCP_Fenrir,sort=nearest,limit=1] run spreadplayers ~ ~ 5 15 false @e[tag=UHCP_WolfMarker,distance=..16]
execute at @e[tag=UHCP_WolfMarker] run summon wolf ~ ~ ~ {Tags:["UHCP_FenrirMinion","UHCP_Summon","UHCP_Init"],Health:5f,Motion:[0.0,0.25,0.0],CustomNameVisible:0b,PersistenceRequired:1b,Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.knockback_resistance",Base:0},{Name:"generic.attack_damage",Base:5},{Name:"generic.armor",Base:1}]}
execute at @e[tag=UHCP_FenrirMinion,tag=UHCP_Init] run particle cloud ~ ~ ~ 0.5 0.5 0.5 0.1 10 normal
tag @e[tag=UHCP_Init] remove UHCP_Init

kill @e[tag=UHCP_WolfMarker]
