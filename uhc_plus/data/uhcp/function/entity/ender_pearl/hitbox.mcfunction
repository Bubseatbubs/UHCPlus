# Grant resistance if next position is within hitbox
$execute unless block ~$(x2) ~$(y2) ~$(z2) #uhcp:no_hitbox_blocks run return run effect give @s minecraft:resistance 1 4 true
$execute unless block ~$(x1) ~$(y1) ~$(z1) #uhcp:no_hitbox_blocks run return run effect give @s minecraft:resistance 1 4 true
$execute positioned ~$(x2) ~$(y2) ~$(z2) if entity @e[dx=0.1,type=!#uhcp:ender_ignore] run effect give @s minecraft:resistance 1 4 true