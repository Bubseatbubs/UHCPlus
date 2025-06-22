execute store result score %x uhcp_titans_id run data get entity @s Pos[0] 1
execute store result score %z uhcp_titans_id run data get entity @s Pos[2] 1

execute unless score %x uhcp_titans_id matches -50..50 run tag @s add LeashedTitan
execute unless score %z uhcp_titans_id matches -50..50 run tag @s add LeashedTitan

execute as @s[tag=LeashedTitan] run return run function ssiege:titans/leash

function uhcp:titans/update