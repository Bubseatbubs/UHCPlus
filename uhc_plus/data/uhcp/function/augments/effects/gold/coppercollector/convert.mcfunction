execute store result score @s uhcp_initStatus run clear @s minecraft:copper_ingot 0
execute store result score @s[scores={uhcp_initStatus=..0}] uhcp_initStatus run clear @s minecraft:copper_block 0

execute at @s[scores={uhcp_initStatus=1..}] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1
execute at @s[scores={uhcp_initStatus=..0}] run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1 1

function uhcp:augments/effects/gold/coppercollector/ingot
function uhcp:augments/effects/gold/coppercollector/block

scoreboard players set @s uhcp_game_time -1
