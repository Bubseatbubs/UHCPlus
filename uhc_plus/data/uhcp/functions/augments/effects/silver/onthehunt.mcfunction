function uhcp:entity/items/loot/summon
loot replace entity @e[type=minecraft:item,tag=UHCP_NewLoot,sort=nearest,limit=1] contents loot uhcp:player_compass
function uhcp:entity/items/loot/finish

scoreboard players set @s uhcp_game_time -1
