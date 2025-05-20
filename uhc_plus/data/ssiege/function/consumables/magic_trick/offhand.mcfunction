execute store result score @s uhcp_initStatus run data get entity @s equipment.offhand.count
execute if score @s uhcp_initStatus matches 1 run return run function uhcp:consumables/magic_trick/remove/offhand
scoreboard players remove @s uhcp_initStatus 1
item modify entity @s weapon.offhand uhcp:count
function uhcp:consumables/magic_trick/init
