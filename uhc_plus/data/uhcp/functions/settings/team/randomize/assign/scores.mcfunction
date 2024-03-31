# Assign intermediate team scores
scoreboard players operation @r[scores={uhcp_initStatus=0,uhcp_ready=0..1}] uhcp_initStatus = %teams_left uhcp_initStatus

scoreboard players remove %players_left uhcp_initStatus 1
execute if score %teams_left uhcp_initStatus matches ..1 run return fail
execute if score %players_left uhcp_initStatus matches ..0 run return fail
scoreboard players remove %teams_left uhcp_initStatus 1
function uhcp:settings/team/randomize/assign/scores
