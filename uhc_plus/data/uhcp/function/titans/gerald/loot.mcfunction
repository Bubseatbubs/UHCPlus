execute as @a[gamemode=survival,distance=..16] at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1
execute as @a[gamemode=survival,distance=..16] at @s run playsound minecraft:entity.sniffer.sniffing master @s ~ ~ ~ 1 1 1
execute as @a[gamemode=survival,distance=..16] at @s run playsound minecraft:entity.sniffer.sniffing master @s ~ ~ ~ 1 1 1
execute as @a[gamemode=survival,distance=..16] at @s run playsound minecraft:entity.sniffer.sniffing master @s ~ ~ ~ 1 1 1
execute as @a[gamemode=survival,distance=..16] at @s run playsound minecraft:entity.sniffer.sniffing master @s ~ ~ ~ 1 1 1


execute at @s run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_GeraldMarker"]}
execute at @s run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_GeraldMarker"]}
execute at @s run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_GeraldMarker"]}
execute at @s run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_GeraldMarker"]}

spreadplayers ~ ~ 3 10 false @e[tag=UHCP_GeraldMarker,distance=..16]
execute at @e[tag=UHCP_GeraldMarker] run loot spawn ~ ~ ~ loot minecraft:gameplay/sniffer_digging
execute at @e[tag=UHCP_GeraldMarker] run data merge entity @n[type=minecraft:item] {Glowing:1b}
execute at @e[tag=UHCP_GeraldMarker] run particle minecraft:block{block_state:"minecraft:dirt"} ~ ~ ~ 0.5 0.5 0.5 0.1 100 normal
execute at @e[tag=UHCP_GeraldMarker] run playsound minecraft:block.gravel.break master @a[distance=..4] ~ ~ ~ 1 0.8 1

kill @e[tag=UHCP_GeraldMarker]

tellraw @a[gamemode=survival,distance=..16] {"text":"Gerald dug up some loot!","color":"gold","bold":true}
