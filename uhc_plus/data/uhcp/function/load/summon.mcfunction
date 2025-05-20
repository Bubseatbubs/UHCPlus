# Summon armor stands
summon minecraft:armor_stand 0 -63 0 {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["UHCP_Lock"]}
scoreboard players remove %lock uhcp_itemCount 1
execute if score %lock uhcp_itemCount matches 1.. run return run function uhcp:load/summon

# Additonal single-time summons
summon minecraft:marker 0.0 0.0 0.0 {Tags:["UHCP_Motion"]}
