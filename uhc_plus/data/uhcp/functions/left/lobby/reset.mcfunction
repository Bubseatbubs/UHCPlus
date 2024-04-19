# Return player to lobby
execute positioned ^29.5 ^16 ^31 unless entity @s[gamemode=adventure,distance=..64] run function uhcp:left/lobby/return
spawnpoint @s ^30 ^16 ^31
