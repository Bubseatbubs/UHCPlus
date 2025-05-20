execute store success score @s uhcp_initStatus run data modify storage uhcp:id player.test set from entity @s Inventory[{Slot:21b}].components."minecraft:custom_data".id
execute if score @s uhcp_initStatus matches 0 store success score @s uhcp_initStatus run data modify storage uhcp:id game.test set from entity @s Inventory[{Slot:21b}].components."minecraft:custom_data".game_id
execute if score @s uhcp_initStatus matches 0 run return fail
item replace entity @s container.21 with minecraft:air
scoreboard players reset @s uhcp_leave
