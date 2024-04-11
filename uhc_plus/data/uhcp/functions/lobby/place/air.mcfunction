# Kill wardens
execute positioned ^29.5 ^16 ^31 as @e[type=minecraft:warden] if entity @s[distance=..64] run function uhcp:entity/instant_kill

# Remove lobby
fill ^ ^31 ^ ^60 ^38 ^62 minecraft:air
fill ^ ^23 ^ ^60 ^30 ^62 minecraft:air
fill ^ ^155 ^ ^60 ^22 ^62 minecraft:air
fill ^ ^7 ^ ^60 ^14 ^62 minecraft:air
fill ^ ^ ^ ^60 ^6 ^62 minecraft:air
