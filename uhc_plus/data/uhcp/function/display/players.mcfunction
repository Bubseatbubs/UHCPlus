# Player count
execute store result storage uhcp:display players.count int 1 run scoreboard players get %players uhcp_initStatus
execute if score %players uhcp_initStatus matches 6.. run return run function uhcp:display/players/white with storage uhcp:display players
function uhcp:display/players/red with storage uhcp:display players
