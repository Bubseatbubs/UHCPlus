# Place lobby
forceload add 0 0 3 3
place structure uhcp:lobby 0 280 0
fill 36 293 34 36 294 34 minecraft:structure_void
fill 52 291 20 52 292 20 minecraft:structure_void
summon painting 21 306 7 {facing:2b,Invulnerable:1b,Tags:["UHCP_Lobby"],variant:"minecraft:earth"}
summon painting 31 292 36 {facing:2b,Invulnerable:1b,Tags:["UHCP_Lobby"],variant:"minecraft:void"}
forceload remove 0 0 3 3
