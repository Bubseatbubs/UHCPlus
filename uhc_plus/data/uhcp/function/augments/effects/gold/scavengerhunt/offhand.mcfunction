execute store success score @s uhcp_initStatus run data modify storage uhcp:id player.test set from entity @s equipment.offhand.components."minecraft:custom_data".id
execute if score @s uhcp_initStatus matches 0 store success score @s uhcp_initStatus run data modify storage uhcp:id game.test set from entity @s equipment.offhand.components."minecraft:custom_data".game_id
execute if score @s uhcp_initStatus matches 0 run return run advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
scoreboard players set @s uhcp_leave 1000
loot replace entity @s weapon.offhand loot uhcp:augments/scavengers_flyer
scoreboard players reset @s uhcp_leave
advancement revoke @s only uhcp:augments/scavenger_hunt/flyer
