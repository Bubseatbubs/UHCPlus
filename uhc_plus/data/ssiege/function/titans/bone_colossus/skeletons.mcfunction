execute as @a[gamemode=survival,distance=..16] at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1

execute at @s run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_SkeletonMarker"]}
execute at @s run summon minecraft:marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_SkeletonMarker"]}
summon minecraft:stray ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:0b,Tags:["UHCP_Minion"],equipment:{mainhand:{id:"minecraft:stone_sword",components:{"minecraft:enchantments":{"minecraft:vanishing_curse":1},"minecraft:enchantment_glint_override":false}},offhand:{id:"minecraft:shield",components:{"minecraft:enchantments":{"minecraft:vanishing_curse":1},"minecraft:enchantment_glint_override":false}},head:{id:"minecraft:oak_button",count:1,components:{"minecraft:enchantments":{"minecraft:vanishing_curse":1}}}},drop_chances:{mainhand:0.000,offhand:0.000,head:0.000}}

spreadplayers ~ ~ 5 15 false @e[tag=UHCP_SkeletonMarker,distance=..16]
execute at @e[tag=UHCP_SkeletonMarker] run summon minecraft:skeleton ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:0b,Tags:["UHCP_Minion"],equipment:{mainhand:{id:"minecraft:bow",components:{"minecraft:enchantments":{"minecraft:vanishing_curse":1},"minecraft:enchantment_glint_override":false}},head:{id:"minecraft:oak_button",count:1,components:{"minecraft:enchantments":{"minecraft:vanishing_curse":1}}}},drop_chances:{mainhand:0.000,head:0.000},Health:5f}
execute at @e[tag=UHCP_SkeletonMarker] run particle minecraft:cloud ~ ~ ~ 0.5 0.5 0.5 0.1 10 normal
kill @e[tag=UHCP_SkeletonMarker]
