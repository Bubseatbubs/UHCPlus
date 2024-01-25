# Select by gamemode
tag @s[gamemode=adventure] add UHCP_TeamJoin
tag @s[gamemode=creative] add UHCP_TeamJoin
tag @s[gamemode=survival] add UHCP_TeamJoin
execute as @s[tag=UHCP_TeamJoin] run function uhcp:start/teams/join
