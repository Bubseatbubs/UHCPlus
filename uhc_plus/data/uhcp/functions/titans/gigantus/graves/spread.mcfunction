execute as @e[tag=UHCP_GigantusGraves,sort=nearest,limit=1] at @s run spreadplayers ~ ~ 5 15 false @e[tag=UHCP_GraveMarker,tag=UHCP_New,distance=..16]
execute as @e[tag=UHCP_GraveMarker,tag=UHCP_New] at @s align xyz run tp @s ~ ~ ~
execute at @e[tag=UHCP_GraveMarker,tag=UHCP_New] align xyz run setblock ~ ~ ~ chiseled_deepslate
execute at @e[tag=UHCP_GraveMarker,tag=UHCP_New] run playsound block.deepslate_bricks.place master @a[distance=..8] ~ ~ ~ 1 1 0.75
execute at @e[tag=UHCP_GraveMarker,tag=UHCP_New] run particle block chiseled_deepslate ~0.5 ~0.5 ~0.5 0.5 0.5 0.5 0.1 25 normal
execute at @e[tag=UHCP_GraveMarker,tag=UHCP_New] run particle end_rod ~0.5 ~0.5 ~0.5 0.6 0.6 0.6 0.1 70 normal
tag @e[tag=UHCP_GraveMarker,tag=UHCP_New] remove UHCP_New


