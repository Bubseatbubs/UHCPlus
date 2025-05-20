execute store result score @s uhcp_initStatus run data get entity @s equipment.offhand.count
execute if score @s uhcp_initStatus matches 1 run return run function uhcp:consumables/ferrum_scrap_metal/remove/offhand
scoreboard players remove @s uhcp_initStatus 1
item modify entity @s weapon.offhand uhcp:count
function uhcp:consumables/ferrum_scrap_metal/init
