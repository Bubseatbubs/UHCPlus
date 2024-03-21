execute as @a[gamemode=survival,distance=..16] at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1

execute at @s run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_SkeletonMarker"]}
execute at @s run summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["UHCP_SkeletonMarker"]}
summon stray ~ ~ ~ {Health:10f,HandItems:[{id:"minecraft:stone_sword",Count:1b},{id:"minecraft:shield",Count:1b}]}

schedule function uhcp:titans/bone_colossus/skeletons/spread 1t