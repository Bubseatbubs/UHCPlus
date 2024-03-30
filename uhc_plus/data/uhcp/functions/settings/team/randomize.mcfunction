# Check for players to add to teams
scoreboard players add @a uhcp_ready 0
execute unless entity @a[scores={uhcp_ready=0..1}] run function uhcp:settings/team/randomize/fail
execute if entity @a[scores={uhcp_ready=0..1}] run function uhcp:settings/team/randomize/randomize
