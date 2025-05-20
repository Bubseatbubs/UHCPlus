# Kill entities in proximity (including wardens)
execute positioned ^29.5 ^16 ^31 run function uhcp:lobby/place/kill

# Remove lobby
fill ^ ^31 ^ ^60 ^38 ^62 minecraft:air strict
fill ^ ^23 ^ ^60 ^30 ^62 minecraft:air strict
fill ^ ^15 ^ ^60 ^22 ^62 minecraft:air strict
fill ^ ^7 ^ ^60 ^14 ^62 minecraft:air strict
fill ^ ^-1 ^ ^60 ^6 ^62 minecraft:air strict
fill ^ ^-9 ^ ^60 ^-2 ^62 minecraft:air strict
