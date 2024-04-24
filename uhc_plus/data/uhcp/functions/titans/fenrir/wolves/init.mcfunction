execute at @s run playsound entity.wolf.growl master @a[distance=..16] ~ ~ ~ 1 0.5 0.75
execute as @a[gamemode=survival,distance=..16] at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1

execute at @s run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_WolfMarker"]}
execute at @s run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_WolfMarker"]}
execute at @s run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_WolfMarker"]}
execute at @s run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_WolfMarker"]}

spreadplayers ~ ~ 5 15 false @e[tag=UHCP_WolfMarker,distance=..16]
execute at @e[tag=UHCP_WolfMarker] run summon wolf ~ ~ ~ {Tags:["UHCP_Minion"],variant:"black",Tags:["UHCP_FenrirMinion","UHCP_Summon"],Health:5f,Motion:[0.0,0.25,0.0],CustomNameVisible:0b,PersistenceRequired:1b,Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.knockback_resistance",Base:0},{Name:"generic.attack_damage",Base:5},{Name:"generic.armor",Base:1}]}
execute at @e[tag=UHCP_WolfMarker] run particle cloud ~ ~ ~ 0.5 0.5 0.5 0.1 10 normal

kill @e[tag=UHCP_WolfMarker]
