function uhcp:entity/items/loot/summon
loot replace entity @e[type=minecraft:item,tag=UHCP_NewLoot,sort=nearest,limit=1] contents loot uhcp:player_compass
function uhcp:entity/items/loot/finish

execute at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

scoreboard players set @s uhcp_game_time -1
