# Assign final team scores
execute store result score @a[scores={uhcp_initStatus=1}] uhcp_team run data get storage uhcp:border teams[-1]

execute unless entity @a[scores={uhcp_initStatus=2..}] run return fail
scoreboard players remove @a uhcp_initStatus 1
data remove storage uhcp:border teams[-1]
function uhcp:settings/team/randomize/assign/teams
