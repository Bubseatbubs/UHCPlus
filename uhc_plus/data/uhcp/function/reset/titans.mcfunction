# Dispose of Titans (quietly)
function uhcp:titans/spawn/despawn

# Remove Titan bossbars
execute unless score %players uhcp_id matches ..0 run function uhcp:titans/bossbar/remove

scoreboard players reset %titans uhcp_game_time
