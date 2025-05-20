# Remove spectator bossbars
execute if score %global uhcp_id = %players uhcp_id run return run function uhcp:reset/bossbar/player
scoreboard players operation %titans uhcp_game_time = %global uhcp_id
scoreboard players operation %titans uhcp_game_time -= %players uhcp_id
function uhcp:reset/bossbar/spectator

# Remove player bossbars
execute if score %players uhcp_id matches 1.. run function uhcp:reset/bossbar/player
