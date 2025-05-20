# Bossbars with spectator IDs
execute store result storage uhcp:id player.id short 1 run scoreboard players get %players uhcp_id
function uhcp:reset/bossbar/remove/player with storage uhcp:id player
scoreboard players remove %players uhcp_id 1
execute if score %players uhcp_id matches 1.. run function uhcp:reset/bossbar/player
