#>  uhcp:teams/transformations
#   Adds transformations to proper teams.
#
# @within uhcp:left/in_game/team

execute as @e[tag=UHCP_KungfuPanda,team=grace_period] run function uhcp:teams/join
execute as @e[tag=UHCP_MagicRabbit,team=grace_period] run function uhcp:teams/join
team join no_collision @e[tag=UHCP_KungfuPanda,scores={uhcp_team=15..},team=]
team join no_collision @e[tag=UHCP_MagicRabbit,scores={uhcp_team=15..},team=]
