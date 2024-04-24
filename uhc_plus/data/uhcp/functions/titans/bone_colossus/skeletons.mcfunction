execute as @a[gamemode=survival,distance=..16] at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1

execute at @s run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_SkeletonMarker"]}
execute at @s run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_SkeletonMarker"]}
summon stray ~ ~ ~ {Tags:["UHCP_Minion"],ArmorItems:[{},{},{},{id:"minecraft:oak_button",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:vanishing_curse":1}}}}],HandItems:[{id:"minecraft:stone_sword",Count:1b},{id:"minecraft:shield",Count:1b}]}

spreadplayers ~ ~ 5 15 false @e[tag=UHCP_SkeletonMarker,distance=..16]
execute at @e[tag=UHCP_SkeletonMarker] run summon skeleton ~ ~ ~ {Tags:["UHCP_Minion"],ArmorItems:[{},{},{},{id:"minecraft:oak_button",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:vanishing_curse":1}}}}],Health:5f,HandItems:[{id:"minecraft:bow",Count:1b},{}]}
execute at @e[tag=UHCP_SkeletonMarker] run particle cloud ~ ~ ~ 0.5 0.5 0.5 0.1 10 normal
kill @e[tag=UHCP_SkeletonMarker]
