# Remove all Titan health bossbars
execute store result storage uhcp:id player.id short 1 run scoreboard players get %players uhcp_id
function uhcp:titans/bossbar/macro_remove with storage uhcp:id player
scoreboard players remove %players uhcp_id 1
execute unless score %players uhcp_id matches ..0 run function uhcp:titans/bossbar/remove
