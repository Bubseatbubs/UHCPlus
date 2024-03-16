advancement revoke @s only uhcp:augments/prop_hunt
scoreboard players add @s uhcp_a_timer 1
execute if score @s uhcp_a_timer matches 20 run playsound block.note_block.pling master @s ~ ~ ~ 1 1 1
execute if score @s uhcp_a_timer matches 40 run playsound block.note_block.pling master @s ~ ~ ~ 1 1 1

execute unless score @s uhcp_a_timer matches 60.. run return 0
playsound block.note_block.pling master @s ~ ~ ~ 1 2 1
scoreboard players set @s uhcp_a_tier 1
function uhcp:augments/effects/silver/prophunt/transform
