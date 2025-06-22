# Summon armor stand to ride
summon minecraft:armor_stand ~ ~ ~ {Invulnerable:true,Marker:true,Invisible:true,Tags:["UHCP_AFKLock"]}

# Timed freedom
scoreboard players set @s uhcp_game_time 3600
execute if score %time uhcp_game_time matches 3600.. run function uhcp:augments/effects/silver/afk/freedom
