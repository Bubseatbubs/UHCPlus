# Return player to lobby
execute positioned ^29.5 ^16 ^31 unless entity @s[gamemode=adventure,distance=..64] run spreadplayers ~ ~ 0 1.5 under 299 false @s
spawnpoint @s ^30 ^16 ^31
