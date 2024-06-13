execute as @a[gamemode=survival,distance=..16] at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1

execute at @s run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_SkeletonMarker"]}
execute at @s run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_SkeletonMarker"]}
summon minecraft:stray ~ ~ ~ {Tags:["UHCP_Minion"],ArmorItems:[{},{},{},{id:"minecraft:oak_button",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:vanishing_curse":1}}}}],HandItems:[{id:"minecraft:stone_sword"},{id:"minecraft:shield"}]}

spreadplayers ~ ~ 5 15 false @e[tag=UHCP_SkeletonMarker,distance=..16]
execute at @e[tag=UHCP_SkeletonMarker] run summon minecraft:skeleton ~ ~ ~ {Tags:["UHCP_Minion"],ArmorItems:[{},{},{},{id:"minecraft:oak_button",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:vanishing_curse":1}}}}],Health:5f,HandItems:[{id:"minecraft:bow"},{}]}
execute at @e[tag=UHCP_SkeletonMarker] run particle minecraft:cloud ~ ~ ~ 0.5 0.5 0.5 0.1 10 normal
kill @e[tag=UHCP_SkeletonMarker]
