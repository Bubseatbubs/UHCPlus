# Bossbars with spectator IDs
execute store result storage uhcp:id player.id short 1 run scoreboard players get %global uhcp_id
function uhcp:reset/bossbar/remove/spectator with storage uhcp:id player
scoreboard players remove %global uhcp_id 1
scoreboard players remove %titans uhcp_game_time 1
execute if score %titans uhcp_game_time matches 1.. run function uhcp:reset/bossbar/spectator
