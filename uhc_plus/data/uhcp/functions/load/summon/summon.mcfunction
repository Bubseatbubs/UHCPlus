# Summon armor stands
summon minecraft:armor_stand 0 -63 0 {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["UHCP_Lock"]}
scoreboard players remove %lock uhcp_itemCount 1
execute unless score %lock uhcp_itemCount matches ..0 run function uhcp:load/summon/summon
