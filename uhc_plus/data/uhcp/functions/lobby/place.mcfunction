# Place lobby
forceload add 0 0 3 3
place structure uhcp:lobby 0 280 0
fill 36 293 34 36 294 34 minecraft:structure_void
fill 52 291 20 52 292 20 minecraft:structure_void
setblock 53 302 44 minecraft:pointed_dripstone[vertical_direction=down]
setblock 53 301 44 minecraft:pointed_dripstone[vertical_direction=down]
setblock 59 311 18 minecraft:pointed_dripstone[vertical_direction=down]
setblock 59 310 18 minecraft:pointed_dripstone[vertical_direction=down]
setblock 20 310 6 minecraft:pointed_dripstone[vertical_direction=down]
setblock 20 309 6 minecraft:pointed_dripstone[vertical_direction=down]
setblock 20 308 3 minecraft:pointed_dripstone[vertical_direction=down]
setblock 20 307 3 minecraft:pointed_dripstone[vertical_direction=down]
setblock 4 309 33 minecraft:pointed_dripstone[vertical_direction=down]
setblock 4 308 33 minecraft:pointed_dripstone[vertical_direction=down]
setblock 4 307 33 minecraft:pointed_dripstone[vertical_direction=down]
summon painting 21 306 7 {facing:2b,Invulnerable:1b,Tags:["UHCP_Lobby"],variant:"minecraft:earth"}
summon painting 31 292 36 {facing:2b,Invulnerable:1b,Tags:["UHCP_Lobby"],variant:"minecraft:void"}
forceload remove 0 0 3 3
