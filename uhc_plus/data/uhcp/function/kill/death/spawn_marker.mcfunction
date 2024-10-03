tag @s add UHCP_Summon
tag @s add UHCP_Death
scoreboard players operation @s uhcp_id = @p[tag=UHCP_CurrentDeadPlayer] uhcp_id
execute unless score @a[tag=UHCP_CurrentDeadPlayer,limit=1] uhcp_initStatus matches ..-64 run return run rotate @s ~ ~
execute at @a[tag=UHCP_CurrentDeadPlayer,limit=1] run tp @s ~ -64 ~ ~ ~
