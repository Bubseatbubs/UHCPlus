tag @s add UHCP_Summon
tag @s add UHCP_Death
scoreboard players operation @s uhcp_id = @p[tag=UHCP_CurrentDeadPlayer] uhcp_id
tp @s @p[tag=UHCP_CurrentDeadPlayer]
