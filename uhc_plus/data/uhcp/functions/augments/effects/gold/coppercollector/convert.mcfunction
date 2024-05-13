execute store result score @s uhcp_initStatus run clear @s minecraft:copper_ingot 0
execute if score @s uhcp_initStatus matches ..0 store result score @s uhcp_initStatus run clear @s minecraft:copper_block 0

execute if score @s uhcp_initStatus matches 1.. at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1
execute if score @s uhcp_initStatus matches ..0 at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1 1

function uhcp:augments/effects/gold/coppercollector/ingot
function uhcp:augments/effects/gold/coppercollector/block

scoreboard players set @s uhcp_game_time -1
