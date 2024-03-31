# Randomize teams
data modify storage uhcp:border teams_set set value [B;1b,2b,3b,4b,5b,6b,7b,8b,9b,10b,11b,13b,14b]
data modify storage uhcp:border teams set value [B;]

scoreboard players set @a uhcp_initStatus 0
scoreboard players set @a uhcp_team 0
execute store result score %players uhcp_initStatus if entity @a[scores={uhcp_ready=0..1}]
scoreboard players operation %players_left uhcp_initStatus = %players uhcp_initStatus
scoreboard players operation %teams_left uhcp_initStatus = %players uhcp_initStatus
scoreboard players operation %players uhcp_initStatus %= %team_size uhcp_settings
scoreboard players operation %teams_left uhcp_initStatus /= %team_size uhcp_settings
execute unless score %players uhcp_initStatus matches 0 run scoreboard players add %teams_left uhcp_initStatus 1
execute if score %teams_left uhcp_initStatus matches 15.. run scoreboard players set %teams_left uhcp_initStatus 14
scoreboard players operation %teams uhcp_initStatus = %teams_left uhcp_initStatus

scoreboard players set %teams_last uhcp_initStatus 14
function uhcp:settings/team/randomize/array

function uhcp:settings/team/randomize/assign
function uhcp:settings/team/randomize/assign/teams
function uhcp:teams/join_all

# Notification - Help me, Bubson! :(
function uhcp:settings/pages/team/1
