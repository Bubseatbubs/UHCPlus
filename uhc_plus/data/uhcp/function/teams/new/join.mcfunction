# Assign "UHCP_New" tagged entities to team based on executing entity's team score
# Sets team scores to that of executing entity
# Removes "UHCP_New" tag
# Adds "UHCP_New" entities to grace_period team during grace period
# Otherwise, if team score >=15, adds all involved entities to no_collision team
scoreboard players operation @e[tag=UHCP_New] uhcp_team = @s uhcp_team
execute if score %pvp uhcp_settings matches 1.. run return run function uhcp:teams/new/grace_period
execute if score @s uhcp_team matches 15.. run return run function uhcp:teams/new/solo
function uhcp:teams/new/pvp
tag @e remove UHCP_New
