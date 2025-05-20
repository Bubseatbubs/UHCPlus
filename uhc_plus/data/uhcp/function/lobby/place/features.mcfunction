# Place features
setblock ^53 ^22 ^44 minecraft:pointed_dripstone[vertical_direction=down,thickness=frustum] strict
setblock ^53 ^21 ^44 minecraft:pointed_dripstone[vertical_direction=down,thickness=tip] strict
setblock ^59 ^31 ^18 minecraft:pointed_dripstone[vertical_direction=down,thickness=frustum] strict
setblock ^59 ^30 ^18 minecraft:pointed_dripstone[vertical_direction=down,thickness=tip] strict
setblock ^20 ^30 ^6 minecraft:pointed_dripstone[vertical_direction=down,thickness=frustum] strict
setblock ^20 ^29 ^6 minecraft:pointed_dripstone[vertical_direction=down,thickness=tip] strict
setblock ^20 ^28 ^3 minecraft:pointed_dripstone[vertical_direction=down,thickness=frustum] strict
setblock ^20 ^27 ^3 minecraft:pointed_dripstone[vertical_direction=down,thickness=tip] strict
setblock ^4 ^29 ^33 minecraft:pointed_dripstone[vertical_direction=down,thickness=base] strict
setblock ^4 ^28 ^33 minecraft:pointed_dripstone[vertical_direction=down,thickness=frustum] strict
setblock ^4 ^27 ^33 minecraft:pointed_dripstone[vertical_direction=down,thickness=tip] strict
execute store result score @s uhcp_initStatus run data get entity @s Rotation[0]
execute if score @s uhcp_initStatus matches 0 run return run function uhcp:lobby/place/paintings/0
execute if score @s uhcp_initStatus matches 90 run return run function uhcp:lobby/place/paintings/90
execute if score @s uhcp_initStatus matches 180 run return run function uhcp:lobby/place/paintings/180
summon minecraft:painting ^21 ^26 ^7 {facing:1b,Invulnerable:1b,Tags:["UHCP_Lobby"],variant:"minecraft:baroque"}
summon minecraft:painting ^31 ^12 ^36 {facing:1b,Invulnerable:1b,Tags:["UHCP_Lobby"],variant:"minecraft:void"}
