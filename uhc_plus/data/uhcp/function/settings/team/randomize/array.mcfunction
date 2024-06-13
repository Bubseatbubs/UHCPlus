# Randomize array for teams
execute store result score %teams_range uhcp_initStatus run random value 1..360360
scoreboard players operation %teams_range uhcp_initStatus %= %teams_last uhcp_initStatus
execute if score %teams_range uhcp_initStatus matches 0..6 run function uhcp:settings/team/randomize/array/first_half
execute if score %teams_range uhcp_initStatus matches 7..13 run function uhcp:settings/team/randomize/array/second_half

execute if score %teams_left uhcp_initStatus matches ..1 run return fail
execute if score %teams_last uhcp_initStatus matches ..1 run return fail
scoreboard players remove %teams_last uhcp_initStatus 1
scoreboard players remove %teams_left uhcp_initStatus 1
function uhcp:settings/team/randomize/array
