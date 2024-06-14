function uhcp:entity/items/loot/summon
loot replace entity @n[type=minecraft:item,tag=UHCP_NewLoot] contents loot uhcp:consumables/relic_invoker
function uhcp:entity/items/loot/finish

scoreboard players add @s uhcp_game_time 24000
execute if score %time uhcp_game_time >= @s uhcp_game_time run function uhcp:augments/effects/prismatic/relicmaster/update
