execute at @e[tag=UHCP_SpiderMarker,limit=1] as @e[tag=UHCP_Arachne,sort=nearest,limit=1] run spreadplayers ~ ~ 5 15 false @e[tag=UHCP_SpiderMarker,distance=..16]
execute at @e[tag=UHCP_SpiderMarker] run summon spider ~ ~ ~ {Health:10f,Motion:[0.0,0.8,0.0],CustomNameVisible:0b,PersistenceRequired:1b,Tags:["UHCP_ArachneSpider","UHCP_Init"],Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.knockback_resistance",Base:0},{Name:"generic.attack_damage",Base:5},{Name:"generic.armor",Base:1}]}
execute at @e[tag=UHCP_ArachneSpider,tag=UHCP_Init] run particle cloud ~ ~ ~ 0.5 0.5 0.5 0.1 10 normal
tag @e[tag=UHCP_Init] remove UHCP_Init

kill @e[tag=UHCP_SpiderMarker]
