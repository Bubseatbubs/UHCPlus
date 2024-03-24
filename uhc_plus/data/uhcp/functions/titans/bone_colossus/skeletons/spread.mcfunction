execute at @e[tag=UHCP_SkeletonMarker,limit=1] as @e[tag=UHCP_BoneColossus,sort=nearest,limit=1] run spreadplayers ~ ~ 5 15 false @e[tag=UHCP_SkeletonMarker,distance=..16]
execute at @e[tag=UHCP_SkeletonMarker] run summon skeleton ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:oak_button",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:vanishing_curse":1}}}}],Health:5f,HandItems:[{id:"minecraft:bow",Count:1b},{}]}
execute at @e[tag=UHCP_SkeletonMarker] run particle cloud ~ ~ ~ 0.5 0.5 0.5 0.1 10 normal
kill @e[tag=UHCP_SkeletonMarker]
