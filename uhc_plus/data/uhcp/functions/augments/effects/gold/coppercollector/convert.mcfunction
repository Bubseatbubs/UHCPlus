function uhcp:augments/effects/gold/coppercollector/ingot
function uhcp:augments/effects/gold/coppercollector/block

execute at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

scoreboard players set @s uhcp_game_time -1
