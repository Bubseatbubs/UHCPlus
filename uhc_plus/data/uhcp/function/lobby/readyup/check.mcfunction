execute store result score %ready uhcp_ready if entity @a[scores={uhcp_ready=1}]
execute store result score %total uhcp_ready if entity @a[scores={uhcp_ready=0..1}]

execute if score %ready uhcp_ready matches 1 if score %ready uhcp_ready = %total uhcp_ready run return run tellraw @a {"text":"The game cannot start with 1 player only!","color":"dark_red"}
execute if score %ready uhcp_ready < %total uhcp_ready run scoreboard players reset %start_countdown uhcp_initStatus

scoreboard players set %can_start uhcp_initStatus 0
execute as @a unless score @s uhcp_team matches 1..14 run scoreboard players set %can_start uhcp_initStatus 1
tag @r[scores={uhcp_team=1..14}] add UHCP_Compare
execute as @a[scores={uhcp_team=1..14}] unless score @s uhcp_team = @p[tag=UHCP_Compare,limit=1] uhcp_team run scoreboard players set %can_start uhcp_initStatus 1
tag @a remove UHCP_Compare
execute if score %ready uhcp_ready = %total uhcp_ready if score %can_start uhcp_initStatus matches 0 run return run tellraw @a {"text":"The game cannot start while everyone is on the same team!","color":"dark_red"}


execute if score %ready uhcp_ready matches 2.. if score %ready uhcp_ready = %total uhcp_ready if score %can_start uhcp_initStatus matches 1 run scoreboard players set %start_countdown uhcp_initStatus 80
