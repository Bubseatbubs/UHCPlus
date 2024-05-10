summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["UHCP_Lock"]}
effect give @s minecraft:mining_fatigue infinite 255 true
effect give @s minecraft:weakness infinite 4 true

scoreboard players set @s uhcp_game_time 3600
