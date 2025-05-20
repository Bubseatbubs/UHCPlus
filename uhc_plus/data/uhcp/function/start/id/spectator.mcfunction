# ID and bossbar initialization
function uhcp:start/id/assign
execute store result storage uhcp:id player.id short 1 run scoreboard players get @s uhcp_id
function uhcp:start/bossbar/spectator with storage uhcp:id player
