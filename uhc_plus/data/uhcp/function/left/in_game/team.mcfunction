# Add grace_period team player to proper team
function uhcp:teams/join
team join no_collision @s[tag=UHCP_IsPanda,scores={uhcp_team=15..}]
team join no_collision @s[tag=UHCP_IsRabbit,scores={uhcp_team=15..}]
schedule function uhcp:teams/transformations 15t
