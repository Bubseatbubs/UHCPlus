# Assign intermediate teams scores
scoreboard players operation @r[scores={uhcp_initStatus=0,uhcp_ready=0..1}] uhcp_initStatus = %teams_left uhcp_initStatus

execute if score %teams_left uhcp_initStatus matches ..1 run return fail
execute if score %players_left uhcp_initStatus matches ..1 run return fail
scoreboard players remove %teams_left uhcp_initStatus 1
scoreboard players remove %players_left uhcp_initStatus 1
function uhcp:settings/team/randomize/assign/scores
