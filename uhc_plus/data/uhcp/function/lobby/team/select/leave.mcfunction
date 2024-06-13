# Leave team
team leave @s
scoreboard players set @s uhcp_team 0
tellraw @a [{"selector":"@s"},{"text":" left their team."}]
