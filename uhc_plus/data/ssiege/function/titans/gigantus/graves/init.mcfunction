execute at @s run playsound minecraft:entity.zombie.death master @a[distance=..16] ~ ~ ~ 1 0.5 0.75
execute as @a[gamemode=survival,distance=..16] at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1

execute at @s run function uhcp:titans/gigantus/graves/place_grave_marker
execute at @s run function uhcp:titans/gigantus/graves/place_grave_marker

spreadplayers ~ ~ 5 15 false @e[tag=UHCP_GraveMarker,tag=UHCP_New,distance=..16]
execute as @e[tag=UHCP_GraveMarker,tag=UHCP_New] at @s align xyz run tp @s ~ ~ ~
execute at @e[tag=UHCP_GraveMarker,tag=UHCP_New] align xyz run setblock ~ ~ ~ minecraft:chiseled_deepslate
execute at @e[tag=UHCP_GraveMarker,tag=UHCP_New] run playsound minecraft:block.deepslate_bricks.place master @a[distance=..8] ~ ~ ~ 1 1 0.75
execute at @e[tag=UHCP_GraveMarker,tag=UHCP_New] run particle minecraft:block{block_state:"minecraft:chiseled_deepslate"} ~0.5 ~0.5 ~0.5 0.5 0.5 0.5 0.1 25 normal
execute at @e[tag=UHCP_GraveMarker,tag=UHCP_New] run particle minecraft:end_rod ~0.5 ~0.5 ~0.5 0.6 0.6 0.6 0.1 70 normal
tag @e[tag=UHCP_GraveMarker,tag=UHCP_New] remove UHCP_New
