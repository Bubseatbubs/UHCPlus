execute at @s run playsound entity.zombie.death master @a[distance=..16] ~ ~ ~ 1 0.5 0.75
execute as @a[gamemode=survival,distance=..16] at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1

execute at @s run function uhcp:titans/gigantus/graves/place_grave_marker
execute at @s run function uhcp:titans/gigantus/graves/place_grave_marker

tag @s add UHCP_GigantusGraves
schedule function uhcp:titans/gigantus/graves/spread 1t