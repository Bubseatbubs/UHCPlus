# Assign players' team scores
scoreboard players operation %teams_left uhcp_initStatus = %teams uhcp_initStatus
function uhcp:settings/team/randomize/assign/scores

execute if score %players_left uhcp_initStatus matches 1.. run function uhcp:settings/team/randomize/assign
