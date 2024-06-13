function uhcp:entity/items/loot/summon
loot replace entity @e[type=minecraft:item,tag=UHCP_NewLoot,sort=nearest,limit=1] contents loot uhcp:consumables/wild_feather
function uhcp:entity/items/loot/finish

scoreboard players add @s uhcp_game_time 6000
execute if score %time uhcp_game_time >= @s uhcp_game_time run function uhcp:augments/effects/prismatic/featherstorm/give
