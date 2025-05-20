$execute store success score @s uhcp_initStatus run data modify storage uhcp:id player.test set value $(id)
execute if score @s uhcp_initStatus matches 1 run return fail
$execute store success score @s uhcp_initStatus run data modify storage uhcp:id game.test set value $(game_id)
