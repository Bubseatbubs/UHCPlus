#>  uhcp:teams/transformations
#   Adds transformations to proper teams.
#
# @within uhcp:left/in_game/team

function uhcp:teams/join_entities
team join no_collision @e[tag=UHCP_KungfuPanda,scores={uhcp_team=15..}]
team join no_collision @e[tag=UHCP_MagicRabbit,scores={uhcp_team=15..}]

team leave @e[team=grace_period]
